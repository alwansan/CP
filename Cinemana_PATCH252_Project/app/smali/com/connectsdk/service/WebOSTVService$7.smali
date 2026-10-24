.class Lcom/connectsdk/service/WebOSTVService$7;
.super Lcom/connectsdk/core/AppInfo;
.source "WebOSTVService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/connectsdk/service/WebOSTVService;->launchNetflix(Ljava/lang/String;Lcom/connectsdk/service/capability/Launcher$AppLaunchListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/connectsdk/service/WebOSTVService;


# direct methods
.method public constructor <init>(Lcom/connectsdk/service/WebOSTVService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/connectsdk/service/WebOSTVService$7;->this$0:Lcom/connectsdk/service/WebOSTVService;

    invoke-direct {p0}, Lcom/connectsdk/core/AppInfo;-><init>()V

    const-string p1, "netflix"

    .line 2
    invoke-virtual {p0, p1}, Lcom/connectsdk/core/AppInfo;->setId(Ljava/lang/String;)V

    const-string p1, "Netflix"

    .line 3
    invoke-virtual {p0, p1}, Lcom/connectsdk/core/AppInfo;->setName(Ljava/lang/String;)V

    return-void
.end method
