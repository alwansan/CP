.class Lcom/connectsdk/service/NetcastTVService$NetcastTVLaunchSessionR;
.super Lcom/connectsdk/service/sessions/LaunchSession;
.source "NetcastTVService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/connectsdk/service/NetcastTVService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetcastTVLaunchSessionR"
.end annotation


# instance fields
.field public appName:Ljava/lang/String;

.field public service:Lcom/connectsdk/service/NetcastTVService;

.field public final synthetic this$0:Lcom/connectsdk/service/NetcastTVService;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/NetcastTVService;Lcom/connectsdk/service/NetcastTVService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/NetcastTVService$NetcastTVLaunchSessionR;->this$0:Lcom/connectsdk/service/NetcastTVService;

    invoke-direct {p0}, Lcom/connectsdk/service/sessions/LaunchSession;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/connectsdk/service/NetcastTVService$NetcastTVLaunchSessionR;->service:Lcom/connectsdk/service/NetcastTVService;

    .line 3
    iput-object p3, p0, Lcom/connectsdk/service/sessions/LaunchSession;->appId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/connectsdk/service/NetcastTVService;Lcom/connectsdk/service/NetcastTVService;Lorg/json/JSONObject;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/connectsdk/service/NetcastTVService$NetcastTVLaunchSessionR;->this$0:Lcom/connectsdk/service/NetcastTVService;

    invoke-direct {p0}, Lcom/connectsdk/service/sessions/LaunchSession;-><init>()V

    .line 5
    iput-object p2, p0, Lcom/connectsdk/service/NetcastTVService$NetcastTVLaunchSessionR;->service:Lcom/connectsdk/service/NetcastTVService;

    .line 6
    invoke-virtual {p0, p3}, Lcom/connectsdk/service/NetcastTVService$NetcastTVLaunchSessionR;->fromJSONObject(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method public close(Lcom/connectsdk/service/capability/listeners/ResponseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/connectsdk/service/capability/listeners/ResponseListener<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public fromJSONObject(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/connectsdk/service/sessions/LaunchSession;->fromJSONObject(Lorg/json/JSONObject;)V

    const-string v0, "appName"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/connectsdk/service/NetcastTVService$NetcastTVLaunchSessionR;->appName:Ljava/lang/String;

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/connectsdk/service/sessions/LaunchSession;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "netcasttv"

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    iget-object v1, p0, Lcom/connectsdk/service/NetcastTVService$NetcastTVLaunchSessionR;->appName:Ljava/lang/String;

    const-string v2, "appName"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
