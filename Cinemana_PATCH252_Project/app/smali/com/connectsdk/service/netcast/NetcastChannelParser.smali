.class public Lcom/connectsdk/service/netcast/NetcastChannelParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "NetcastChannelParser.java"


# instance fields
.field public final AUDIO_CHANNEL:Ljava/lang/String;

.field public final CHANNEL_NAME:Ljava/lang/String;

.field public final CHANNEL_TYPE:Ljava/lang/String;

.field public final DISPLAY_MAJOR:Ljava/lang/String;

.field public final DISPLAY_MINOR:Ljava/lang/String;

.field public final INPUT_SOURCE_INDEX:Ljava/lang/String;

.field public final INPUT_SOURCE_NAME:Ljava/lang/String;

.field public final INPUT_SOURCE_TYPE:Ljava/lang/String;

.field public final LABEL_NAME:Ljava/lang/String;

.field public final MAJOR:Ljava/lang/String;

.field public final MINOR:Ljava/lang/String;

.field public final PHYSICAL_NUM:Ljava/lang/String;

.field public final PROGRAM_NAME:Ljava/lang/String;

.field public final SOURCE_INDEX:Ljava/lang/String;

.field public channel:Lorg/json/JSONObject;

.field public channelArray:Lorg/json/JSONArray;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const-string v0, "chtype"

    .line 2
    iput-object v0, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->CHANNEL_TYPE:Ljava/lang/String;

    const-string v0, "major"

    .line 3
    iput-object v0, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->MAJOR:Ljava/lang/String;

    const-string v0, "minor"

    .line 4
    iput-object v0, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->MINOR:Ljava/lang/String;

    const-string v0, "displayMajor"

    .line 5
    iput-object v0, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->DISPLAY_MAJOR:Ljava/lang/String;

    const-string v0, "displayMinor"

    .line 6
    iput-object v0, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->DISPLAY_MINOR:Ljava/lang/String;

    const-string v0, "sourceIndex"

    .line 7
    iput-object v0, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->SOURCE_INDEX:Ljava/lang/String;

    const-string v0, "physicalNum"

    .line 8
    iput-object v0, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->PHYSICAL_NUM:Ljava/lang/String;

    const-string v0, "chname"

    .line 9
    iput-object v0, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->CHANNEL_NAME:Ljava/lang/String;

    const-string v0, "progName"

    .line 10
    iput-object v0, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->PROGRAM_NAME:Ljava/lang/String;

    const-string v0, "audioCh"

    .line 11
    iput-object v0, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->AUDIO_CHANNEL:Ljava/lang/String;

    const-string v0, "inputSourceName"

    .line 12
    iput-object v0, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->INPUT_SOURCE_NAME:Ljava/lang/String;

    const-string v0, "inputSourceType"

    .line 13
    iput-object v0, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->INPUT_SOURCE_TYPE:Ljava/lang/String;

    const-string v0, "labelName"

    .line 14
    iput-object v0, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->LABEL_NAME:Ljava/lang/String;

    const-string v0, "inputSourceIdx"

    .line 15
    iput-object v0, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->INPUT_SOURCE_INDEX:Ljava/lang/String;

    .line 16
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->channelArray:Lorg/json/JSONArray;

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->value:Ljava/lang/String;

    return-void
.end method

.method public static parseRawChannelData(Lorg/json/JSONObject;)Lcom/connectsdk/core/ChannelInfo;
    .locals 8

    const-string v0, "channelNumber"

    const-string v1, "minorNumber"

    const-string v2, "majorNumber"

    const-string v3, "channelId"

    const-string v4, "channelName"

    .line 1
    new-instance v5, Lcom/connectsdk/core/ChannelInfo;

    invoke-direct {v5}, Lcom/connectsdk/core/ChannelInfo;-><init>()V

    .line 2
    invoke-virtual {v5, p0}, Lcom/connectsdk/core/ChannelInfo;->setRawData(Lorg/json/JSONObject;)V

    .line 3
    :try_start_0
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 4
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v4, v7

    .line 5
    :goto_0
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 6
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    .line 7
    :cond_1
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_2

    .line 8
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 9
    :goto_1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 10
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 11
    :goto_2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 12
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_3

    .line 13
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 14
    :goto_3
    invoke-virtual {v5, v4}, Lcom/connectsdk/core/ChannelInfo;->setName(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v5, v7}, Lcom/connectsdk/core/ChannelInfo;->setId(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v5, p0}, Lcom/connectsdk/core/ChannelInfo;->setNumber(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v5, v2}, Lcom/connectsdk/core/ChannelInfo;->setMajorNumber(I)V

    .line 18
    invoke-virtual {v5, v1}, Lcom/connectsdk/core/ChannelInfo;->setMinorNumber(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 19
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_4
    return-object v5
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->value:Ljava/lang/String;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string p1, "labelName"

    const-string p2, "inputSourceType"

    const-string v0, "inputSourceName"

    const-string v1, "audioCh"

    const-string v2, "sourceIndex"

    :try_start_0
    const-string v3, "data"

    .line 1
    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2
    iget-object p1, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->channelArray:Lorg/json/JSONArray;

    iget-object p2, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->channel:Lorg/json/JSONObject;

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    :cond_0
    const-string v3, "chtype"

    .line 3
    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    iget-object p1, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->channel:Lorg/json/JSONObject;

    const-string p2, "channelModeName"

    iget-object p3, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->value:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_1
    const-string v3, "major"

    .line 5
    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    iget-object p1, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->channel:Lorg/json/JSONObject;

    const-string p2, "majorNumber"

    iget-object p3, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->value:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_2
    const-string v3, "displayMajor"

    .line 7
    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8
    iget-object p1, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->channel:Lorg/json/JSONObject;

    const-string p2, "displayMajorNumber"

    iget-object p3, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->value:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_3
    const-string v3, "minor"

    .line 9
    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 10
    iget-object p1, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->channel:Lorg/json/JSONObject;

    const-string p2, "minorNumber"

    iget-object p3, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->value:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_4
    const-string v3, "displayMinor"

    .line 11
    invoke-virtual {p3, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 12
    iget-object p1, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->channel:Lorg/json/JSONObject;

    const-string p2, "displayMinorNumber"

    iget-object p3, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->value:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_0

    .line 13
    :cond_5
    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 14
    iget-object p1, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->channel:Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->value:Ljava/lang/String;

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_6
    const-string v2, "physicalNum"

    .line 15
    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 16
    iget-object p1, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->channel:Lorg/json/JSONObject;

    const-string p2, "physicalNumber"

    iget-object p3, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->value:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_0

    :cond_7
    const-string v2, "chname"

    .line 17
    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 18
    iget-object p1, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->channel:Lorg/json/JSONObject;

    const-string p2, "channelName"

    iget-object p3, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->value:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_8
    const-string v2, "progName"

    .line 19
    invoke-virtual {p3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 20
    iget-object p1, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->channel:Lorg/json/JSONObject;

    const-string p2, "programName"

    iget-object p3, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->value:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 21
    :cond_9
    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 22
    iget-object p1, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->channel:Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->value:Ljava/lang/String;

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 23
    :cond_a
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 24
    iget-object p1, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->channel:Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->value:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 25
    :cond_b
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 26
    iget-object p1, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->channel:Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->value:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 27
    :cond_c
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 28
    iget-object p2, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->channel:Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->value:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_d
    const-string p1, "inputSourceIdx"

    .line 29
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 30
    iget-object p1, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->channel:Lorg/json/JSONObject;

    const-string p2, "inputSourceIndex"

    iget-object p3, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->value:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e
    :goto_0
    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->value:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public getJSONChannelArray()Lorg/json/JSONArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->channelArray:Lorg/json/JSONArray;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0

    const-string p1, "data"

    .line 1
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/connectsdk/service/netcast/NetcastChannelParser;->channel:Lorg/json/JSONObject;

    :cond_0
    return-void
.end method
