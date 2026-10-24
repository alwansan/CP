.class public Lcom/onesignal/b0;
.super Ljava/lang/Object;
.source "OSNotificationController.java"


# instance fields
.field public final a:Lcom/shabakaty/downloader/ar$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/ar$a<",
            "Landroidx/work/ListenableWorker$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/shabakaty/downloader/h33;

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ar$a;Landroid/content/Context;Lorg/json/JSONObject;ZZLjava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ar$a<",
            "Landroidx/work/ListenableWorker$a;",
            ">;",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "ZZ",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/onesignal/b0;->a:Lcom/shabakaty/downloader/ar$a;

    .line 9
    iput-boolean p4, p0, Lcom/onesignal/b0;->c:Z

    .line 10
    iput-boolean p5, p0, Lcom/onesignal/b0;->d:Z

    .line 11
    new-instance p5, Lcom/shabakaty/downloader/h33;

    invoke-direct {p5, p1, p2}, Lcom/shabakaty/downloader/h33;-><init>(Lcom/shabakaty/downloader/ar$a;Landroid/content/Context;)V

    .line 12
    iput-object p3, p5, Lcom/shabakaty/downloader/h33;->d:Lorg/json/JSONObject;

    .line 13
    iput-object p6, p5, Lcom/shabakaty/downloader/h33;->f:Ljava/lang/Long;

    .line 14
    iput-boolean p4, p5, Lcom/shabakaty/downloader/h33;->e:Z

    .line 15
    iput-object p5, p0, Lcom/onesignal/b0;->b:Lcom/shabakaty/downloader/h33;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/h33;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p2, p0, Lcom/onesignal/b0;->c:Z

    .line 3
    iput-boolean p3, p0, Lcom/onesignal/b0;->d:Z

    .line 4
    iput-object p1, p0, Lcom/onesignal/b0;->b:Lcom/shabakaty/downloader/h33;

    .line 5
    iget-object p1, p1, Lcom/shabakaty/downloader/h33;->a:Lcom/shabakaty/downloader/ar$a;

    .line 6
    iput-object p1, p0, Lcom/onesignal/b0;->a:Lcom/shabakaty/downloader/ar$a;

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4

    const-string v0, "com.onesignal.NotificationServiceExtension"

    .line 1
    invoke-static {p0, v0}, Lcom/onesignal/o0;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x7

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "No class found, not setting up OSRemoteNotificationReceivedHandler"

    .line 2
    invoke-static {v0, p0, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", attempting to call constructor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v0, v2, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    .line 7
    instance-of v0, p0, Lcom/onesignal/q0$v;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/onesignal/q0;->m:Lcom/onesignal/q0$v;

    if-nez v0, :cond_1

    .line 8
    check-cast p0, Lcom/onesignal/q0$v;

    if-nez v0, :cond_1

    .line 9
    sput-object p0, Lcom/onesignal/q0;->m:Lcom/onesignal/q0$v;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/c33;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/onesignal/b0;->b:Lcom/shabakaty/downloader/h33;

    .line 2
    iput-object p1, v0, Lcom/shabakaty/downloader/h33;->b:Lcom/shabakaty/downloader/c33;

    .line 3
    iget-boolean v1, p0, Lcom/onesignal/b0;->c:Z

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v0}, Lcom/onesignal/q;->d(Lcom/shabakaty/downloader/h33;)V

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 5
    iput v1, p1, Lcom/shabakaty/downloader/c33;->c:I

    const/4 p1, 0x1

    const/4 v1, 0x0

    .line 6
    invoke-static {v0, p1, v1}, Lcom/onesignal/q;->g(Lcom/shabakaty/downloader/h33;ZZ)V

    .line 7
    iget-object p1, p0, Lcom/onesignal/b0;->b:Lcom/shabakaty/downloader/h33;

    invoke-static {p1}, Lcom/onesignal/q0;->D(Lcom/shabakaty/downloader/h33;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "OSNotificationController{notificationJob="

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/b0;->b:Lcom/shabakaty/downloader/h33;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isRestoring="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onesignal/b0;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isBackgroundLogic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onesignal/b0;->d:Z

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/xh2;->a(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
