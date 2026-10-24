.class public Lcom/onesignal/g1$a;
.super Ljava/lang/Object;
.source "PushRegistratorADM.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/g1;->a(Landroid/content/Context;Ljava/lang/String;Lcom/onesignal/f1$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Landroid/content/Context;

.field public final synthetic s:Lcom/onesignal/f1$a;


# direct methods
.method public constructor <init>(Lcom/onesignal/g1;Landroid/content/Context;Lcom/onesignal/f1$a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/onesignal/g1$a;->r:Landroid/content/Context;

    iput-object p3, p0, Lcom/onesignal/g1$a;->s:Lcom/onesignal/f1$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    new-instance v0, Lcom/amazon/device/messaging/ADM;

    iget-object v1, p0, Lcom/onesignal/g1$a;->r:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amazon/device/messaging/ADM;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->getRegistrationId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/amazon/device/messaging/ADM;->startRegister()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADM Already registered with ID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v0, v3, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    iget-object v0, p0, Lcom/onesignal/g1$a;->s:Lcom/onesignal/f1$a;

    const/4 v3, 0x1

    check-cast v0, Lcom/onesignal/q0$k;

    invoke-virtual {v0, v1, v3}, Lcom/onesignal/q0$k;->a(Ljava/lang/String;I)V

    :goto_0
    const-wide/16 v0, 0x7530

    .line 7
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 8
    :goto_1
    sget-boolean v0, Lcom/onesignal/g1;->b:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    const-string v1, "com.onesignal.ADMMessageHandler timed out, please check that your have the receiver, service, and your package name matches(NOTE: Case Sensitive) per the OneSignal instructions."

    .line 9
    invoke-static {v0, v1, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    invoke-static {v2}, Lcom/onesignal/g1;->b(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
