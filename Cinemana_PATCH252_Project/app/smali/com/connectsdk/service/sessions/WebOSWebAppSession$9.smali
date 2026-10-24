.class Lcom/connectsdk/service/sessions/WebOSWebAppSession$9;
.super Lorg/json/JSONObject;
.source "WebOSWebAppSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/sessions/WebOSWebAppSession;->getDuration(Lcom/connectsdk/service/capability/MediaControl$DurationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

.field public final synthetic val$requestId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$9;->this$0:Lcom/connectsdk/service/sessions/WebOSWebAppSession;

    iput-object p2, p0, Lcom/connectsdk/service/sessions/WebOSWebAppSession$9;->val$requestId:Ljava/lang/String;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "contentType"

    const-string p2, "connectsdk.mediaCommand"

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3
    new-instance p1, Lcom/connectsdk/service/sessions/WebOSWebAppSession$9$1;

    invoke-direct {p1, p0}, Lcom/connectsdk/service/sessions/WebOSWebAppSession$9$1;-><init>(Lcom/connectsdk/service/sessions/WebOSWebAppSession$9;)V

    const-string p2, "mediaCommand"

    invoke-virtual {p0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method
