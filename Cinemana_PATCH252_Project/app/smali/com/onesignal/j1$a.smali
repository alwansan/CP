.class public Lcom/onesignal/j1$a;
.super Ljava/lang/Object;
.source "PushRegistratorHMS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/j1;->a(Landroid/content/Context;Ljava/lang/String;Lcom/onesignal/f1$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic r:Landroid/content/Context;

.field public final synthetic s:Lcom/onesignal/f1$a;

.field public final synthetic t:Lcom/onesignal/j1;


# direct methods
.method public constructor <init>(Lcom/onesignal/j1;Landroid/content/Context;Lcom/onesignal/f1$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/onesignal/j1$a;->t:Lcom/onesignal/j1;

    iput-object p2, p0, Lcom/onesignal/j1$a;->r:Landroid/content/Context;

    iput-object p3, p0, Lcom/onesignal/j1$a;->s:Lcom/onesignal/f1$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/onesignal/j1$a;->t:Lcom/onesignal/j1;

    iget-object v1, p0, Lcom/onesignal/j1$a;->r:Landroid/content/Context;

    iget-object v2, p0, Lcom/onesignal/j1$a;->s:Lcom/onesignal/f1$a;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/onesignal/j1;->b(Landroid/content/Context;Lcom/onesignal/f1$a;)V
    :try_end_0
    .catch Lcom/huawei/hms/common/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v1, 0x3

    const-string v2, "HMS ApiException getting Huawei push token!"

    .line 3
    invoke-static {v1, v2, v0}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {v0}, Lcom/huawei/hms/common/ApiException;->getStatusCode()I

    move-result v0

    const v1, 0x3611c818

    if-ne v0, v1, :cond_0

    const/16 v0, -0x1a

    goto :goto_0

    :cond_0
    const/16 v0, -0x1b

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/onesignal/j1$a;->s:Lcom/onesignal/f1$a;

    const/4 v2, 0x0

    check-cast v1, Lcom/onesignal/q0$k;

    invoke-virtual {v1, v2, v0}, Lcom/onesignal/q0$k;->a(Ljava/lang/String;I)V

    :goto_1
    return-void
.end method
