.class Lcom/connectsdk/service/sessions/WebOSWebAppSession$16$1;
.super Lorg/json/JSONObject;
.source "WebOSWebAppSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/connectsdk/service/sessions/WebOSWebAppSession$16;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/connectsdk/service/sessions/WebOSWebAppSession$16;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession$16;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$16$1;->this$1:Lcom/connectsdk/service/sessions/WebOSWebAppSession$16;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "type"

    const-string v1, "displayImage"

    .line 2
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    iget-object v0, p1, Lcom/connectsdk/service/sessions/WebOSWebAppSession$16;->val$url:Ljava/lang/String;

    const-string v1, "mediaURL"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    iget-object v0, p1, Lcom/connectsdk/service/sessions/WebOSWebAppSession$16;->val$iconSrc:Ljava/lang/String;

    const-string v1, "iconURL"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget-object v0, p1, Lcom/connectsdk/service/sessions/WebOSWebAppSession$16;->val$title:Ljava/lang/String;

    const-string v1, "title"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    iget-object v0, p1, Lcom/connectsdk/service/sessions/WebOSWebAppSession$16;->val$description:Ljava/lang/String;

    const-string v1, "description"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    iget-object v0, p1, Lcom/connectsdk/service/sessions/WebOSWebAppSession$16;->val$mimeType:Ljava/lang/String;

    const-string v1, "mimeType"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    iget-object p1, p1, Lcom/connectsdk/service/sessions/WebOSWebAppSession$16;->val$requestId:Ljava/lang/String;

    const-string v0, "requestId"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method
