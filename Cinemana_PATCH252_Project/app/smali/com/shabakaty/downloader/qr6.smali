.class public final Lcom/shabakaty/downloader/qr6;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/cast/framework/media/MediaNotificationService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/qr6;->a:Lcom/google/android/gms/cast/framework/media/MediaNotificationService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v0, "targetActivity"

    .line 1
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/content/ComponentName;

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/qr6;->a:Lcom/google/android/gms/cast/framework/media/MediaNotificationService;

    .line 5
    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->F:Lcom/shabakaty/downloader/tw;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Must be called from the main thread."

    .line 7
    invoke-static {v2}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 8
    :try_start_0
    iget-object v1, v1, Lcom/shabakaty/downloader/tw;->b:Lcom/shabakaty/downloader/so6;

    invoke-interface {v1}, Lcom/shabakaty/downloader/so6;->l()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    sget-object v4, Lcom/shabakaty/downloader/tw;->k:Lcom/shabakaty/downloader/pk2;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "hasActivityInRecents"

    aput-object v6, v5, v2

    const-class v6, Lcom/shabakaty/downloader/so6;

    .line 10
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "Unable to call %s on %s."

    .line 11
    invoke-virtual {v4, v1, v6, v5}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :goto_0
    const/high16 v4, 0x8000000

    if-eqz v1, :cond_0

    const/high16 p2, 0x24000000

    .line 12
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 13
    invoke-static {p1, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    goto :goto_2

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/qr6;->a:Lcom/google/android/gms/cast/framework/media/MediaNotificationService;

    .line 15
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 17
    :try_start_1
    invoke-static {v1, p2}, Lcom/shabakaty/downloader/ex2;->b(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_1

    .line 18
    invoke-virtual {v5, v6, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/shabakaty/downloader/ex2;->b(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 22
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Landroid/content/Intent;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/Intent;

    .line 23
    new-instance v0, Landroid/content/Intent;

    aget-object v5, p2, v2

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v5, 0x1000c000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    aput-object v0, p2, v2

    const/4 v0, 0x0

    .line 24
    invoke-static {v1, v3, p2, v4, v0}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p2

    .line 25
    :goto_2
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 27
    invoke-virtual {p2, p1, v3, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 28
    sget-object p2, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->H:Lcom/shabakaty/downloader/pk2;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Sending PendingIntent failed"

    .line 29
    invoke-virtual {p2, p1, v1, v0}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 30
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No intents added to TaskStackBuilder; cannot getPendingIntent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    move-exception p1

    const-string p2, "TaskStackBuilder"

    const-string v0, "Bad ComponentName while traversing activity parent metadata"

    .line 31
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
