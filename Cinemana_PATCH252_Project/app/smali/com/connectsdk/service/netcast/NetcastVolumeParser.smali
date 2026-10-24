.class public Lcom/connectsdk/service/netcast/NetcastVolumeParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "NetcastVolumeParser.java"


# instance fields
.field public final LEVEL:Ljava/lang/String;

.field public final MAX_LEVEL:Ljava/lang/String;

.field public final MIN_LEVEL:Ljava/lang/String;

.field public final MUTE:Ljava/lang/String;

.field public value:Ljava/lang/String;

.field public volumeStatus:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const-string v0, "mute"

    .line 2
    iput-object v0, p0, Lcom/connectsdk/service/netcast/NetcastVolumeParser;->MUTE:Ljava/lang/String;

    const-string v0, "minLevel"

    .line 3
    iput-object v0, p0, Lcom/connectsdk/service/netcast/NetcastVolumeParser;->MIN_LEVEL:Ljava/lang/String;

    const-string v0, "maxLevel"

    .line 4
    iput-object v0, p0, Lcom/connectsdk/service/netcast/NetcastVolumeParser;->MAX_LEVEL:Ljava/lang/String;

    const-string v0, "level"

    .line 5
    iput-object v0, p0, Lcom/connectsdk/service/netcast/NetcastVolumeParser;->LEVEL:Ljava/lang/String;

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/connectsdk/service/netcast/NetcastVolumeParser;->volumeStatus:Lorg/json/JSONObject;

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/connectsdk/service/netcast/NetcastVolumeParser;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Lcom/connectsdk/service/netcast/NetcastVolumeParser;->value:Ljava/lang/String;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string p1, "level"

    const-string p2, "maxLevel"

    const-string v0, "minLevel"

    const-string v1, "mute"

    .line 1
    :try_start_0
    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2
    iget-object p1, p0, Lcom/connectsdk/service/netcast/NetcastVolumeParser;->volumeStatus:Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/connectsdk/service/netcast/NetcastVolumeParser;->value:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/connectsdk/service/netcast/NetcastVolumeParser;->volumeStatus:Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/connectsdk/service/netcast/NetcastVolumeParser;->value:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object p1, p0, Lcom/connectsdk/service/netcast/NetcastVolumeParser;->volumeStatus:Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/connectsdk/service/netcast/NetcastVolumeParser;->value:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 8
    iget-object p2, p0, Lcom/connectsdk/service/netcast/NetcastVolumeParser;->volumeStatus:Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/connectsdk/service/netcast/NetcastVolumeParser;->value:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/connectsdk/service/netcast/NetcastVolumeParser;->value:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public getVolumeStatus()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/connectsdk/service/netcast/NetcastVolumeParser;->volumeStatus:Lorg/json/JSONObject;

    return-object v0
.end method
