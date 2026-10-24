.class public Lcom/onesignal/FCMIntentService;
.super Landroid/app/IntentService;
.source "FCMIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "FCMIntentService"

    .line 1
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/IntentService;->setIntentRedelivery(Z)V

    return-void
.end method


# virtual methods
.method public onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/onesignal/q0;->F(Landroid/content/Context;)V

    .line 3
    new-instance v1, Lcom/onesignal/FCMIntentService$a;

    invoke-direct {v1, p0, p1}, Lcom/onesignal/FCMIntentService$a;-><init>(Lcom/onesignal/FCMIntentService;Landroid/content/Intent;)V

    .line 4
    invoke-static {p0, v0, v1}, Lcom/onesignal/q;->e(Landroid/content/Context;Landroid/os/Bundle;Lcom/onesignal/q$c;)V

    return-void
.end method
