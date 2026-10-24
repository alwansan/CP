.class public final Lcom/shabakaty/downloader/services/DownloaderService;
.super Lcom/shabakaty/downloader/th2;
.source "DownloaderService.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/services/DownloaderService$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 \u00042\u00020\u0001:\u0001\u0005B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/shabakaty/downloader/services/DownloaderService;",
        "Lcom/shabakaty/downloader/th2;",
        "<init>",
        "()V",
        "x",
        "a",
        "shabakaty-downloader_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final x:Lcom/shabakaty/downloader/services/DownloaderService$a;

.field public static y:Z

.field public static volatile z:Lcom/shabakaty/downloader/services/DownloaderService;


# instance fields
.field public s:Landroid/os/PowerManager$WakeLock;

.field public t:Lcom/shabakaty/downloader/ey0;

.field public u:Lcom/shabakaty/downloader/uz0;

.field public v:Lcom/shabakaty/downloader/i13;

.field public w:Landroid/app/NotificationManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/shabakaty/downloader/services/DownloaderService$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/services/DownloaderService$a;-><init>(Lcom/shabakaty/downloader/nn0;)V

    sput-object v0, Lcom/shabakaty/downloader/services/DownloaderService;->x:Lcom/shabakaty/downloader/services/DownloaderService$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/th2;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/services/DownloaderService;->z:Lcom/shabakaty/downloader/services/DownloaderService;

    if-nez v0, :cond_0

    .line 2
    sput-object p0, Lcom/shabakaty/downloader/services/DownloaderService;->z:Lcom/shabakaty/downloader/services/DownloaderService;

    :cond_0
    return-void
.end method

.method public final b(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/services/DownloaderService;->s:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string v0, "power"

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "Shabakaty:Downloader"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 4
    iput-object v0, p0, Lcom/shabakaty/downloader/services/DownloaderService;->s:Landroid/os/PowerManager$WakeLock;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/services/DownloaderService;->s:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const-wide/16 v1, 0x4e20

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/shabakaty/downloader/services/DownloaderService;->s:Landroid/os/PowerManager$WakeLock;

    :cond_3
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    const-string v1, "starting foreground"

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "com.shabakaty.downloader.CHANNEL_ID"

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/services/DownloaderService;->w:Landroid/app/NotificationManager;

    const-string v5, "notificationManager"

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-nez v0, :cond_3

    .line 5
    new-instance v0, Landroid/app/NotificationChannel;

    invoke-direct {v0, v3, v3, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 6
    iget-object v6, p0, Lcom/shabakaty/downloader/services/DownloaderService;->w:Landroid/app/NotificationManager;

    if-eqz v6, :cond_1

    .line 7
    invoke-virtual {v6, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {v5}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v4

    .line 9
    :cond_2
    invoke-static {v5}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v4

    .line 10
    :cond_3
    :goto_1
    new-instance v0, Lcom/shabakaty/downloader/m03;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5, v3}, Lcom/shabakaty/downloader/m03;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    iput-object v3, v0, Lcom/shabakaty/downloader/m03;->x:Ljava/lang/String;

    const v3, 0x7f120086

    .line 12
    invoke-virtual {p0, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/m03;->f(Ljava/lang/CharSequence;)Lcom/shabakaty/downloader/m03;

    const/4 v3, 0x2

    .line 13
    invoke-virtual {v0, v3, v2}, Lcom/shabakaty/downloader/m03;->i(IZ)V

    const-wide/16 v5, 0x1f40

    .line 14
    iput-wide v5, v0, Lcom/shabakaty/downloader/m03;->y:J

    const/16 v3, 0x10

    .line 15
    invoke-virtual {v0, v3, v1}, Lcom/shabakaty/downloader/m03;->i(IZ)V

    const/4 v3, -0x2

    .line 16
    iput v3, v0, Lcom/shabakaty/downloader/m03;->j:I

    .line 17
    iput-boolean v2, v0, Lcom/shabakaty/downloader/m03;->k:Z

    const/16 v3, 0x8

    .line 18
    invoke-virtual {v0, v3, v1}, Lcom/shabakaty/downloader/m03;->i(IZ)V

    new-array v2, v2, [J

    .line 19
    iget-object v3, v0, Lcom/shabakaty/downloader/m03;->B:Landroid/app/Notification;

    iput-object v2, v3, Landroid/app/Notification;->vibrate:[J

    .line 20
    invoke-virtual {v0, v4}, Lcom/shabakaty/downloader/m03;->l(Landroid/net/Uri;)Lcom/shabakaty/downloader/m03;

    .line 21
    sget v2, Lcom/shabakaty/downloader/z24;->c:I

    .line 22
    iget-object v3, v0, Lcom/shabakaty/downloader/m03;->B:Landroid/app/Notification;

    iput v2, v3, Landroid/app/Notification;->icon:I

    .line 23
    invoke-virtual {v0}, Lcom/shabakaty/downloader/m03;->c()Landroid/app/Notification;

    move-result-object v0

    const-string v2, "Builder(applicationConte\u2026onSmallIcon)\n\t\t\t\t.build()"

    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x1343c9a

    .line 24
    invoke-virtual {p0, v2, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 25
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/services/DownloaderService;->b(Z)V

    .line 26
    invoke-virtual {p0}, Lcom/shabakaty/downloader/services/DownloaderService;->a()V

    .line 27
    sput-boolean v1, Lcom/shabakaty/downloader/services/DownloaderService;->y:Z

    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    const-string v1, "stopping foreground"

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$a;->b()V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/services/DownloaderService;->v:Lcom/shabakaty/downloader/i13;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/i13;->a()V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/services/DownloaderService;->b(Z)V

    return-void

    :cond_0
    const-string v0, "notificationUtils"

    .line 6
    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    const-string v1, "onCreate"

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/xk0;->a:Lcom/shabakaty/downloader/uy0;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    check-cast v0, Lcom/shabakaty/downloader/wk0;

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/wk0;->k:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ey0;

    .line 5
    iput-object v1, p0, Lcom/shabakaty/downloader/services/DownloaderService;->t:Lcom/shabakaty/downloader/ey0;

    .line 6
    iget-object v1, v0, Lcom/shabakaty/downloader/wk0;->f:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/uz0;

    .line 7
    iput-object v1, p0, Lcom/shabakaty/downloader/services/DownloaderService;->u:Lcom/shabakaty/downloader/uz0;

    .line 8
    iget-object v1, v0, Lcom/shabakaty/downloader/wk0;->i:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/i13;

    .line 9
    iput-object v1, p0, Lcom/shabakaty/downloader/services/DownloaderService;->v:Lcom/shabakaty/downloader/i13;

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/wk0;->h:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v0}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 11
    iput-object v0, p0, Lcom/shabakaty/downloader/services/DownloaderService;->w:Landroid/app/NotificationManager;

    .line 12
    :goto_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/services/DownloaderService;->c()V

    const/4 v0, 0x1

    .line 13
    sput-boolean v0, Lcom/shabakaty/downloader/services/DownloaderService;->y:Z

    .line 14
    invoke-virtual {p0}, Lcom/shabakaty/downloader/services/DownloaderService;->a()V

    .line 15
    invoke-super {p0}, Lcom/shabakaty/downloader/th2;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    const-string v1, "destroying service"

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/services/DownloaderService;->d()V

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/shabakaty/downloader/services/DownloaderService;->y:Z

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lcom/shabakaty/downloader/services/DownloaderService;->z:Lcom/shabakaty/downloader/services/DownloaderService;

    .line 5
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x3

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/vd5;->z(Landroid/content/Context;J)V

    .line 6
    invoke-super {p0}, Lcom/shabakaty/downloader/th2;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    const-string v1, "onStartCommand"

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/services/DownloaderService;->c()V

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/shabakaty/downloader/th2;->onStartCommand(Landroid/content/Intent;II)I

    .line 4
    sget-boolean p1, Lcom/shabakaty/downloader/services/DownloaderService;->y:Z

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/shabakaty/downloader/services/DownloaderService;->z:Lcom/shabakaty/downloader/services/DownloaderService;

    if-nez p1, :cond_1

    .line 5
    :cond_0
    sput-boolean p3, Lcom/shabakaty/downloader/services/DownloaderService;->y:Z

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/services/DownloaderService;->a()V

    .line 7
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object p1

    const-string v0, "retrying stopped downloads"

    invoke-virtual {p1, v0, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 8
    new-instance v3, Lcom/shabakaty/downloader/yy0;

    invoke-direct {v3, p0, p2}, Lcom/shabakaty/downloader/yy0;-><init>(Lcom/shabakaty/downloader/services/DownloaderService;Lcom/shabakaty/downloader/ud0;)V

    .line 9
    invoke-static {p0}, Lcom/shabakaty/downloader/cl3;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/ih2;

    move-result-object v0

    .line 10
    sget-object v1, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 12
    :cond_1
    invoke-static {p2}, Lcom/shabakaty/downloader/d91;->c(Lcom/shabakaty/downloader/e92;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object p1

    const-string v0, "subscribing to downloads flow"

    invoke-virtual {p1, v0, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 14
    iget-object p1, p0, Lcom/shabakaty/downloader/services/DownloaderService;->u:Lcom/shabakaty/downloader/uz0;

    if-eqz p1, :cond_2

    .line 15
    iget-object p1, p1, Lcom/shabakaty/downloader/uz0;->c:Lcom/shabakaty/downloader/kf2;

    invoke-interface {p1}, Lcom/shabakaty/downloader/kf2;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/te1;

    .line 16
    new-instance v0, Lcom/shabakaty/downloader/zy0;

    invoke-direct {v0, p0, p2}, Lcom/shabakaty/downloader/zy0;-><init>(Lcom/shabakaty/downloader/services/DownloaderService;Lcom/shabakaty/downloader/ud0;)V

    .line 17
    new-instance p2, Lcom/shabakaty/downloader/of1;

    invoke-direct {p2, p1, v0}, Lcom/shabakaty/downloader/of1;-><init>(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/hn1;)V

    .line 18
    invoke-static {p0}, Lcom/shabakaty/downloader/cl3;->e(Lcom/shabakaty/downloader/rh2;)Lcom/shabakaty/downloader/ih2;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/shabakaty/downloader/zy;->h(Lcom/shabakaty/downloader/te1;Lcom/shabakaty/downloader/se0;)Lcom/shabakaty/downloader/e92;

    goto :goto_0

    :cond_2
    const-string p1, "downloadsRepo"

    .line 19
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_0
    return p3
.end method
