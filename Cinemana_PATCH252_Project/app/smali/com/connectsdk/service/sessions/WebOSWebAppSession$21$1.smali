.class Lcom/connectsdk/service/sessions/WebOSWebAppSession$21$1;
.super Lorg/json/JSONObject;
.source "WebOSWebAppSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/connectsdk/service/sessions/WebOSWebAppSession$21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/connectsdk/service/sessions/WebOSWebAppSession$21;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession$21;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21$1;->this$1:Lcom/connectsdk/service/sessions/WebOSWebAppSession$21;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "type"

    const-string v1, "playMedia"

    .line 2
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    iget-object v0, p1, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21;->val$mediaInfo:Lcom/connectsdk/core/MediaInfo;

    invoke-virtual {v0}, Lcom/connectsdk/core/MediaInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mediaURL"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    iget-object v0, p1, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21;->val$iconSrc:Ljava/lang/String;

    const-string v1, "iconURL"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget-object v0, p1, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21;->val$mediaInfo:Lcom/connectsdk/core/MediaInfo;

    invoke-virtual {v0}, Lcom/connectsdk/core/MediaInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    iget-object v0, p1, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21;->val$mediaInfo:Lcom/connectsdk/core/MediaInfo;

    invoke-virtual {v0}, Lcom/connectsdk/core/MediaInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v1, "description"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    iget-object v0, p1, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21;->val$mediaInfo:Lcom/connectsdk/core/MediaInfo;

    invoke-virtual {v0}, Lcom/connectsdk/core/MediaInfo;->getMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mimeType"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    iget-boolean v0, p1, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21;->val$shouldLoop:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "shouldLoop"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    iget-object v0, p1, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21;->val$requestId:Ljava/lang/String;

    const-string v1, "requestId"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    iget-object p1, p1, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21;->val$subtitleInfo:Lcom/connectsdk/core/SubtitleInfo;

    if-eqz p1, :cond_0

    .line 11
    new-instance p1, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21$1$1;

    invoke-direct {p1, p0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21$1$1;-><init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession$21$1;)V

    const-string v0, "subtitles"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method
