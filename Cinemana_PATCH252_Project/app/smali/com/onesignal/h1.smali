.class public abstract Lcom/onesignal/h1;
.super Ljava/lang/Object;
.source "PushRegistratorAbstractGoogle.java"

# interfaces
.implements Lcom/onesignal/f1;


# instance fields
.field public a:Lcom/onesignal/f1$a;

.field public b:Ljava/lang/Thread;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/onesignal/f1$a;)V
    .locals 4

    .line 1
    iput-object p3, p0, Lcom/onesignal/h1;->a:Lcom/onesignal/f1$a;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x3

    if-nez v1, :cond_0

    const-string v0, "Missing Google Project number!\nPlease enter a Google Project number / Sender ID on under App Settings > Android > Configuration on the OneSignal dashboard."

    .line 3
    invoke-static {v3, v0, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, -0x6

    .line 4
    check-cast p3, Lcom/onesignal/q0$k;

    invoke-virtual {p3, v2, v0}, Lcom/onesignal/q0$k;->a(Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    .line 5
    :try_start_1
    invoke-static {}, Lcom/onesignal/o0;->o()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 7
    :try_start_2
    iget-object p1, p0, Lcom/onesignal/h1;->b:Ljava/lang/Thread;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_1

    .line 8
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    .line 9
    :cond_1
    :try_start_4
    new-instance p1, Ljava/lang/Thread;

    new-instance p3, Lcom/shabakaty/downloader/ak3;

    invoke-direct {p3, p0, p2}, Lcom/shabakaty/downloader/ak3;-><init>(Lcom/onesignal/h1;Ljava/lang/String;)V

    invoke-direct {p1, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/onesignal/h1;->b:Ljava/lang/Thread;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 11
    :try_start_5
    monitor-exit p0

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    .line 12
    :cond_2
    invoke-static {}, Lcom/shabakaty/downloader/sq1;->a()V

    const-string p1, "\'Google Play services\' app not installed or disabled on the device."

    .line 13
    invoke-static {v3, p1, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    iget-object p1, p0, Lcom/onesignal/h1;->a:Lcom/onesignal/f1$a;

    const/4 p2, -0x7

    check-cast p1, Lcom/onesignal/q0$k;

    invoke-virtual {p1, v2, p2}, Lcom/onesignal/q0$k;->a(Ljava/lang/String;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    const-string p2, "Could not register with FCM due to an issue with your AndroidManifest.xml or with \'Google Play services\'."

    .line 15
    invoke-static {v3, p2, p1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    iget-object p1, p0, Lcom/onesignal/h1;->a:Lcom/onesignal/f1$a;

    const/4 p2, -0x8

    check-cast p1, Lcom/onesignal/q0$k;

    invoke-virtual {p1, v2, p2}, Lcom/onesignal/q0$k;->a(Ljava/lang/String;I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public abstract b(Ljava/lang/String;)Ljava/lang/String;
.end method
