.class Lcom/connectsdk/service/RokuService$5;
.super Lorg/json/JSONObject;
.source "RokuService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/RokuService;->launchAppStore(Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/RokuService;

.field public final synthetic val$appId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/RokuService;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/RokuService$5;->this$0:Lcom/connectsdk/service/RokuService;

    iput-object p2, p0, Lcom/connectsdk/service/RokuService$5;->val$appId:Ljava/lang/String;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "contentId"

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method
