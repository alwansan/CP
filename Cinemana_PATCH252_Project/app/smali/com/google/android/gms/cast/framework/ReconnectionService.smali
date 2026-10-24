.class public Lcom/google/android/gms/cast/framework/ReconnectionService;
.super Landroid/app/Service;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# static fields
.field public static final s:Lcom/shabakaty/downloader/pk2;


# instance fields
.field public r:Lcom/shabakaty/downloader/kc7;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pk2;

    const-string v1, "ReconnectionService"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pk2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/ReconnectionService;->s:Lcom/shabakaty/downloader/pk2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/ReconnectionService;->r:Lcom/shabakaty/downloader/kc7;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/kc7;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 2
    sget-object v0, Lcom/google/android/gms/cast/framework/ReconnectionService;->s:Lcom/shabakaty/downloader/pk2;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "onBind"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/shabakaty/downloader/kc7;

    .line 3
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Unable to call %s on %s."

    .line 4
    invoke-virtual {v0, p1, v2, v1}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 11

    const-string v0, "getWrappedThis"

    const-string v1, "Unable to call %s on %s."

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/tw;->d(Landroid/content/Context;)Lcom/shabakaty/downloader/tw;

    move-result-object v2

    .line 2
    invoke-virtual {v2}, Lcom/shabakaty/downloader/tw;->c()Lcom/shabakaty/downloader/y14;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    .line 3
    :try_start_0
    iget-object v3, v3, Lcom/shabakaty/downloader/y14;->a:Lcom/shabakaty/downloader/se7;

    invoke-interface {v3}, Lcom/shabakaty/downloader/se7;->x()Lcom/shabakaty/downloader/gx1;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 4
    sget-object v8, Lcom/shabakaty/downloader/y14;->c:Lcom/shabakaty/downloader/pk2;

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v0, v9, v6

    const-class v10, Lcom/shabakaty/downloader/se7;

    .line 5
    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    .line 6
    invoke-virtual {v8, v3, v1, v9}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v3, v4

    :goto_0
    const-string v8, "Must be called from the main thread."

    .line 7
    invoke-static {v8}, Lcom/google/android/gms/common/internal/a;->e(Ljava/lang/String;)V

    .line 8
    iget-object v2, v2, Lcom/shabakaty/downloader/tw;->d:Lcom/shabakaty/downloader/vk6;

    .line 9
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :try_start_1
    iget-object v2, v2, Lcom/shabakaty/downloader/vk6;->a:Lcom/shabakaty/downloader/j87;

    invoke-interface {v2}, Lcom/shabakaty/downloader/j87;->x()Lcom/shabakaty/downloader/gx1;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 11
    sget-object v8, Lcom/shabakaty/downloader/vk6;->b:Lcom/shabakaty/downloader/pk2;

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v0, v9, v6

    const-class v0, Lcom/shabakaty/downloader/j87;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v5

    .line 13
    invoke-virtual {v8, v2, v1, v9}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v4

    .line 14
    :goto_1
    sget-object v2, Lcom/shabakaty/downloader/lg5;->a:Lcom/shabakaty/downloader/pk2;

    .line 15
    :try_start_2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/downloader/lg5;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/zg5;

    move-result-object v2

    .line 16
    new-instance v8, Lcom/shabakaty/downloader/p43;

    invoke-direct {v8, p0}, Lcom/shabakaty/downloader/p43;-><init>(Ljava/lang/Object;)V

    .line 17
    invoke-interface {v2, v8, v3, v0}, Lcom/shabakaty/downloader/zg5;->p0(Lcom/shabakaty/downloader/gx1;Lcom/shabakaty/downloader/gx1;Lcom/shabakaty/downloader/gx1;)Lcom/shabakaty/downloader/kc7;

    move-result-object v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/shabakaty/downloader/of5; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    .line 18
    :goto_2
    sget-object v2, Lcom/shabakaty/downloader/lg5;->a:Lcom/shabakaty/downloader/pk2;

    new-array v3, v7, [Ljava/lang/Object;

    const-string v8, "newReconnectionServiceImpl"

    aput-object v8, v3, v6

    const-class v8, Lcom/shabakaty/downloader/zg5;

    .line 19
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v3, v5

    .line 20
    invoke-virtual {v2, v0, v1, v3}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    :goto_3
    iput-object v4, p0, Lcom/google/android/gms/cast/framework/ReconnectionService;->r:Lcom/shabakaty/downloader/kc7;

    .line 22
    :try_start_3
    invoke-interface {v4}, Lcom/shabakaty/downloader/kc7;->l0()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 23
    sget-object v2, Lcom/google/android/gms/cast/framework/ReconnectionService;->s:Lcom/shabakaty/downloader/pk2;

    new-array v3, v7, [Ljava/lang/Object;

    const-string v4, "onCreate"

    aput-object v4, v3, v6

    const-class v4, Lcom/shabakaty/downloader/kc7;

    .line 24
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 25
    invoke-virtual {v2, v0, v1, v3}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    :goto_4
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/ReconnectionService;->r:Lcom/shabakaty/downloader/kc7;

    invoke-interface {v0}, Lcom/shabakaty/downloader/kc7;->onDestroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lcom/google/android/gms/cast/framework/ReconnectionService;->s:Lcom/shabakaty/downloader/pk2;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "onDestroy"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/shabakaty/downloader/kc7;

    .line 3
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "Unable to call %s on %s."

    .line 4
    invoke-virtual {v1, v0, v3, v2}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/ReconnectionService;->r:Lcom/shabakaty/downloader/kc7;

    invoke-interface {v0, p1, p2, p3}, Lcom/shabakaty/downloader/kc7;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 2
    sget-object p2, Lcom/google/android/gms/cast/framework/ReconnectionService;->s:Lcom/shabakaty/downloader/pk2;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "onStartCommand"

    aput-object v1, p3, v0

    const-class v0, Lcom/shabakaty/downloader/kc7;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p3, v1

    const-string v0, "Unable to call %s on %s."

    .line 4
    invoke-virtual {p2, p1, v0, p3}, Lcom/shabakaty/downloader/pk2;->b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method
