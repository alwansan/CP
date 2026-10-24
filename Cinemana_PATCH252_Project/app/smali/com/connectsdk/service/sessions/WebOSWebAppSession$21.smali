.class Lcom/connectsdk/service/sessions/WebOSWebAppSession$21;
.super Lorg/json/JSONObject;
.source "WebOSWebAppSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/sessions/WebOSWebAppSession;->createPlayMediaJsonRequest(Lcom/connectsdk/core/MediaInfo;ZLjava/lang/String;Ljava/lang/String;Lcom/connectsdk/core/SubtitleInfo;)Lorg/json/JSONObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

.field public final synthetic val$iconSrc:Ljava/lang/String;

.field public final synthetic val$mediaInfo:Lcom/connectsdk/core/MediaInfo;

.field public final synthetic val$requestId:Ljava/lang/String;

.field public final synthetic val$shouldLoop:Z

.field public final synthetic val$subtitleInfo:Lcom/connectsdk/core/SubtitleInfo;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Lcom/connectsdk/core/MediaInfo;Ljava/lang/String;ZLjava/lang/String;Lcom/connectsdk/core/SubtitleInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    iput-object p2, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21;->val$mediaInfo:Lcom/connectsdk/core/MediaInfo;

    iput-object p3, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21;->val$iconSrc:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21;->val$shouldLoop:Z

    iput-object p5, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21;->val$requestId:Ljava/lang/String;

    iput-object p6, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21;->val$subtitleInfo:Lcom/connectsdk/core/SubtitleInfo;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "contentType"

    const-string p2, "connectsdk.mediaCommand"

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    new-instance p1, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21$1;

    invoke-direct {p1, p0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession$21$1;-><init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession$21;)V

    const-string p2, "mediaCommand"

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method
