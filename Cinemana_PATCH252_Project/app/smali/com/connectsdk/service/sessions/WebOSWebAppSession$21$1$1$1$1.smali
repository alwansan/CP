.class Lcom/connectsdk/service/sessions/WebOSWebAppSession$21$1$1$1$1;
.super Lorg/json/JSONObject;
.source "WebOSWebAppSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/connectsdk/service/sessions/WebOSWebAppSession$21$1$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$4:Lcom/connectsdk/service/sessions/WebOSWebAppSession$21$1$1$1;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession$21$1$1$1;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21$1$1$1$1;->this$4:Lcom/connectsdk/service/sessions/WebOSWebAppSession$21$1$1$1;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "id"

    const-string v1, "1"

    .line 2
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    iget-object v0, p1, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21$1$1$1;->this$3:Lcom/connectsdk/service/sessions/WebOSWebAppSession$21$1$1;

    iget-object v0, v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21$1$1;->this$2:Lcom/connectsdk/service/sessions/WebOSWebAppSession$21$1;

    iget-object v0, v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21$1;->this$1:Lcom/connectsdk/service/sessions/WebOSWebAppSession$21;

    iget-object v0, v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21;->val$subtitleInfo:Lcom/connectsdk/core/SubtitleInfo;

    invoke-virtual {v0}, Lcom/connectsdk/core/SubtitleInfo;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    iget-object v0, p1, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21$1$1$1;->this$3:Lcom/connectsdk/service/sessions/WebOSWebAppSession$21$1$1;

    iget-object v0, v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21$1$1;->this$2:Lcom/connectsdk/service/sessions/WebOSWebAppSession$21$1;

    iget-object v0, v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21$1;->this$1:Lcom/connectsdk/service/sessions/WebOSWebAppSession$21;

    iget-object v0, v0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21;->val$subtitleInfo:Lcom/connectsdk/core/SubtitleInfo;

    invoke-virtual {v0}, Lcom/connectsdk/core/SubtitleInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    iget-object p1, p1, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21$1$1$1;->this$3:Lcom/connectsdk/service/sessions/WebOSWebAppSession$21$1$1;

    iget-object p1, p1, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21$1$1;->this$2:Lcom/connectsdk/service/sessions/WebOSWebAppSession$21$1;

    iget-object p1, p1, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21$1;->this$1:Lcom/connectsdk/service/sessions/WebOSWebAppSession$21;

    iget-object p1, p1, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21;->val$subtitleInfo:Lcom/connectsdk/core/SubtitleInfo;

    invoke-virtual {p1}, Lcom/connectsdk/core/SubtitleInfo;->getLabel()Ljava/lang/String;

    move-result-object p1

    const-string v0, "label"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method
