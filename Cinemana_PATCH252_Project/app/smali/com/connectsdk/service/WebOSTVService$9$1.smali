.class Lcom/connectsdk/service/WebOSTVService$9$1;
.super Lcom/connectsdk/core/AppInfo;
.source "WebOSTVService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/WebOSTVService$9;->onSuccess(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/connectsdk/service/WebOSTVService$9;

.field public final synthetic val$jsonObj:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/WebOSTVService$9;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/WebOSTVService$9$1;->this$1:Lcom/connectsdk/service/WebOSTVService$9;

    iput-object p2, p0, Lcom/connectsdk/service/WebOSTVService$9$1;->val$jsonObj:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/connectsdk/core/AppInfo;-><init>()V

    const-string p1, "appId"

    .line 2
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/connectsdk/core/AppInfo;->setId(Ljava/lang/String;)V

    const-string p1, "appName"

    .line 3
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/connectsdk/core/AppInfo;->setName(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/connectsdk/core/AppInfo;->setRawData(Lorg/json/JSONObject;)V

    return-void
.end method
