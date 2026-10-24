.class public Lcom/google/android/gms/cast/framework/media/MediaNotificationService;
.super Landroid/app/Service;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/framework/media/MediaNotificationService$a;,
        Lcom/google/android/gms/cast/framework/media/MediaNotificationService$b;
    }
.end annotation


# static fields
.field public static final H:Lcom/shabakaty/downloader/pk2;

.field public static I:Ljava/lang/Runnable;


# instance fields
.field public A:Landroid/content/res/Resources;

.field public B:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$b;

.field public C:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$a;

.field public D:Landroid/app/NotificationManager;

.field public E:Landroid/app/Notification;

.field public F:Lcom/shabakaty/downloader/tw;

.field public final G:Landroid/content/BroadcastReceiver;

.field public r:Lcom/shabakaty/downloader/a13;

.field public s:Lcom/shabakaty/downloader/ez1;

.field public t:Landroid/content/ComponentName;

.field public u:Landroid/content/ComponentName;

.field public v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/j03;",
            ">;"
        }
    .end annotation
.end field

.field public w:[I

.field public x:J

.field public y:Lcom/shabakaty/downloader/sm5;

.field public z:Lcom/shabakaty/downloader/wy1;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/pk2;

    const-string v1, "MediaNotificationService"

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pk2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->H:Lcom/shabakaty/downloader/pk2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->v:Ljava/util/List;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/qr6;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/qr6;-><init>(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->G:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static a(Lcom/shabakaty/downloader/qt5;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qt5;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/g03;",
            ">;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p0}, Lcom/shabakaty/downloader/qt5;->Q()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    sget-object v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->H:Lcom/shabakaty/downloader/pk2;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "getNotificationActions"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/shabakaty/downloader/qt5;

    .line 3
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4
    iget-object v2, v0, Lcom/shabakaty/downloader/pk2;->a:Ljava/lang/String;

    const-string v3, "Unable to call %s on %s."

    invoke-virtual {v0, v3, v1}, Lcom/shabakaty/downloader/pk2;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lcom/shabakaty/downloader/qt5;)[I
    .locals 4

    .line 1
    :try_start_0
    invoke-interface {p0}, Lcom/shabakaty/downloader/qt5;->k1()[I

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2
    sget-object v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->H:Lcom/shabakaty/downloader/pk2;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "getCompactViewActionIndices"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/shabakaty/downloader/qt5;

    .line 3
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 4
    iget-object v2, v0, Lcom/shabakaty/downloader/pk2;->a:Ljava/lang/String;

    const-string v3, "Unable to call %s on %s."

    invoke-virtual {v0, v3, v1}, Lcom/shabakaty/downloader/pk2;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->B:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$b;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->C:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    .line 3
    :cond_1
    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$a;->b:Landroid/graphics/Bitmap;

    .line 4
    :goto_0
    new-instance v3, Lcom/shabakaty/downloader/m03;

    const-string v4, "cast_media_notification"

    invoke-direct {v3, v0, v4}, Lcom/shabakaty/downloader/m03;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/m03;->j(Landroid/graphics/Bitmap;)Lcom/shabakaty/downloader/m03;

    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->r:Lcom/shabakaty/downloader/a13;

    .line 6
    iget v1, v1, Lcom/shabakaty/downloader/a13;->v:I

    .line 7
    iget-object v4, v3, Lcom/shabakaty/downloader/m03;->B:Landroid/app/Notification;

    iput v1, v4, Landroid/app/Notification;->icon:I

    .line 8
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->B:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$b;

    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$b;->d:Ljava/lang/String;

    .line 9
    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/m03;->g(Ljava/lang/CharSequence;)Lcom/shabakaty/downloader/m03;

    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->A:Landroid/content/res/Resources;

    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->r:Lcom/shabakaty/downloader/a13;

    .line 10
    iget v4, v4, Lcom/shabakaty/downloader/a13;->J:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    .line 11
    iget-object v7, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->B:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$b;

    iget-object v7, v7, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$b;->e:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 12
    invoke-virtual {v1, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/m03;->f(Ljava/lang/CharSequence;)Lcom/shabakaty/downloader/m03;

    const/4 v1, 0x2

    .line 14
    invoke-virtual {v3, v1, v5}, Lcom/shabakaty/downloader/m03;->i(IZ)V

    .line 15
    iput-boolean v8, v3, Lcom/shabakaty/downloader/m03;->k:Z

    .line 16
    iput v5, v3, Lcom/shabakaty/downloader/m03;->v:I

    .line 17
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->u:Landroid/content/ComponentName;

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_1

    .line 18
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 19
    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->u:Landroid/content/ComponentName;

    const-string v6, "targetActivity"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 20
    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->u:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x8000000

    .line 21
    invoke-static {v0, v5, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_3

    .line 22
    iput-object v1, v3, Lcom/shabakaty/downloader/m03;->g:Landroid/app/PendingIntent;

    .line 23
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->r:Lcom/shabakaty/downloader/a13;

    .line 24
    iget-object v1, v1, Lcom/shabakaty/downloader/a13;->W:Lcom/shabakaty/downloader/qt5;

    if-eqz v1, :cond_a

    .line 25
    sget-object v4, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->H:Lcom/shabakaty/downloader/pk2;

    new-array v6, v8, [Ljava/lang/Object;

    .line 26
    iget-object v7, v4, Lcom/shabakaty/downloader/pk2;->a:Ljava/lang/String;

    const-string v9, "actionsProvider != null"

    invoke-virtual {v4, v9, v6}, Lcom/shabakaty/downloader/pk2;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    invoke-static {v1}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->b(Lcom/shabakaty/downloader/qt5;)[I

    move-result-object v4

    .line 28
    invoke-virtual {v4}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    iput-object v4, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->w:[I

    .line 29
    invoke-static {v1}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->a(Lcom/shabakaty/downloader/qt5;)Ljava/util/List;

    move-result-object v1

    .line 30
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->v:Ljava/util/List;

    .line 31
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/g03;

    .line 32
    iget-object v6, v4, Lcom/shabakaty/downloader/g03;->r:Ljava/lang/String;

    const-string v7, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    .line 33
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    .line 34
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    .line 35
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "com.google.android.gms.cast.framework.action.FORWARD"

    .line 36
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "com.google.android.gms.cast.framework.action.REWIND"

    .line 37
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    .line 38
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v6, 0x1

    :goto_4
    if-eqz v6, :cond_6

    .line 39
    iget-object v4, v4, Lcom/shabakaty/downloader/g03;->r:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v4}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/j03;

    move-result-object v4

    goto/16 :goto_8

    .line 41
    :cond_6
    new-instance v6, Landroid/content/Intent;

    .line 42
    iget-object v7, v4, Lcom/shabakaty/downloader/g03;->r:Ljava/lang/String;

    .line 43
    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    iget-object v7, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->t:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 45
    invoke-static {v0, v8, v6, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 46
    iget v6, v4, Lcom/shabakaty/downloader/g03;->s:I

    .line 47
    iget-object v4, v4, Lcom/shabakaty/downloader/g03;->t:Ljava/lang/String;

    if-nez v6, :cond_7

    move-object v10, v2

    goto :goto_5

    :cond_7
    const-string v7, ""

    .line 48
    invoke-static {v2, v7, v6}, Landroidx/core/graphics/drawable/IconCompat;->b(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v6

    move-object v10, v6

    :goto_5
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    const/16 v18, 0x1

    .line 49
    invoke-static {v4}, Lcom/shabakaty/downloader/m03;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    const/16 v19, 0x0

    .line 50
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 51
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_8

    move-object v15, v2

    goto :goto_6

    .line 53
    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Lcom/shabakaty/downloader/ar3;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/shabakaty/downloader/ar3;

    move-object v15, v4

    .line 54
    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    move-object v14, v2

    goto :goto_7

    .line 55
    :cond_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/shabakaty/downloader/ar3;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/shabakaty/downloader/ar3;

    move-object v14, v4

    .line 56
    :goto_7
    new-instance v4, Lcom/shabakaty/downloader/j03;

    move-object v9, v4

    move/from16 v16, v18

    move/from16 v17, v19

    invoke-direct/range {v9 .. v19}, Lcom/shabakaty/downloader/j03;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Lcom/shabakaty/downloader/ar3;[Lcom/shabakaty/downloader/ar3;ZIZZ)V

    .line 57
    :goto_8
    iget-object v6, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->v:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 58
    :cond_a
    sget-object v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->H:Lcom/shabakaty/downloader/pk2;

    new-array v2, v8, [Ljava/lang/Object;

    .line 59
    iget-object v4, v1, Lcom/shabakaty/downloader/pk2;->a:Ljava/lang/String;

    const-string v6, "actionsProvider == null"

    invoke-virtual {v1, v6, v2}, Lcom/shabakaty/downloader/pk2;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->v:Ljava/util/List;

    .line 61
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->r:Lcom/shabakaty/downloader/a13;

    .line 62
    iget-object v1, v1, Lcom/shabakaty/downloader/a13;->r:Ljava/util/List;

    .line 63
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 64
    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->v:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->d(Ljava/lang/String;)Lcom/shabakaty/downloader/j03;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 65
    :cond_b
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->r:Lcom/shabakaty/downloader/a13;

    .line 66
    iget-object v1, v1, Lcom/shabakaty/downloader/a13;->s:[I

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    .line 67
    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->w:[I

    .line 68
    :cond_c
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/j03;

    .line 69
    invoke-virtual {v3, v2}, Lcom/shabakaty/downloader/m03;->b(Lcom/shabakaty/downloader/j03;)Lcom/shabakaty/downloader/m03;

    goto :goto_a

    .line 70
    :cond_d
    new-instance v1, Lcom/shabakaty/downloader/q03;

    invoke-direct {v1}, Lcom/shabakaty/downloader/q03;-><init>()V

    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->w:[I

    .line 71
    iput-object v2, v1, Lcom/shabakaty/downloader/q03;->e:[I

    .line 72
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->B:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$b;

    iget-object v2, v2, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$b;->a:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 73
    iput-object v2, v1, Lcom/shabakaty/downloader/q03;->f:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 74
    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/m03;->m(Lcom/shabakaty/downloader/r03;)Lcom/shabakaty/downloader/m03;

    .line 75
    invoke-virtual {v3}, Lcom/shabakaty/downloader/m03;->c()Landroid/app/Notification;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->E:Landroid/app/Notification;

    .line 76
    invoke-virtual {v0, v5, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)Lcom/shabakaty/downloader/j03;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v4, 0x0

    const-string v6, "com.google.android.gms.cast.framework.action.FORWARD"

    const-string v7, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    const-string v8, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    const-string v9, "com.google.android.gms.cast.framework.action.SKIP_PREV"

    const-string v10, "com.google.android.gms.cast.framework.action.SKIP_NEXT"

    const-string v11, "com.google.android.gms.cast.framework.action.REWIND"

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_1
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_2
    const-string v2, "com.google.android.gms.cast.framework.action.DISCONNECT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_3
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_4
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_5
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_6
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    const-wide/16 v12, 0x2710

    const/high16 v14, 0x8000000

    const-string v15, "googlecast-extra_skip_step_ms"

    const-string v5, ""

    const/4 v3, 0x0

    const-wide/16 v18, 0x7530

    packed-switch v2, :pswitch_data_0

    .line 2
    sget-object v2, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->H:Lcom/shabakaty/downloader/pk2;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v4

    .line 3
    iget-object v1, v2, Lcom/shabakaty/downloader/pk2;->a:Ljava/lang/String;

    const-string v4, "Action: %s is not a pre-defined action."

    invoke-virtual {v2, v4, v5}, Lcom/shabakaty/downloader/pk2;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 4
    :pswitch_0
    iget-wide v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->x:J

    .line 5
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v6, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->t:Landroid/content/ComponentName;

    invoke-virtual {v7, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 7
    invoke-virtual {v7, v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 8
    invoke-static {v0, v4, v7, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v23

    .line 9
    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->r:Lcom/shabakaty/downloader/a13;

    .line 10
    iget v6, v4, Lcom/shabakaty/downloader/a13;->B:I

    .line 11
    iget v7, v4, Lcom/shabakaty/downloader/a13;->P:I

    cmp-long v8, v1, v12

    if-nez v8, :cond_7

    .line 12
    iget v6, v4, Lcom/shabakaty/downloader/a13;->C:I

    .line 13
    iget v7, v4, Lcom/shabakaty/downloader/a13;->Q:I

    goto :goto_2

    :cond_7
    cmp-long v8, v1, v18

    if-nez v8, :cond_8

    .line 14
    iget v6, v4, Lcom/shabakaty/downloader/a13;->D:I

    .line 15
    iget v7, v4, Lcom/shabakaty/downloader/a13;->R:I

    .line 16
    :cond_8
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->A:Landroid/content/res/Resources;

    .line 17
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v6, :cond_9

    move-object/from16 v21, v3

    goto :goto_3

    .line 18
    :cond_9
    invoke-static {v3, v5, v6}, Landroidx/core/graphics/drawable/IconCompat;->b(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    move-object/from16 v21, v2

    :goto_3
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    const/16 v29, 0x1

    .line 19
    invoke-static {v1}, Lcom/shabakaty/downloader/m03;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v22

    const/16 v30, 0x0

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v26, v3

    goto :goto_4

    .line 23
    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/shabakaty/downloader/ar3;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/shabakaty/downloader/ar3;

    move-object/from16 v26, v1

    .line 24
    :goto_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_5

    .line 25
    :cond_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/shabakaty/downloader/ar3;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Lcom/shabakaty/downloader/ar3;

    :goto_5
    move-object/from16 v25, v3

    .line 26
    new-instance v1, Lcom/shabakaty/downloader/j03;

    move-object/from16 v20, v1

    move/from16 v27, v29

    move/from16 v28, v30

    invoke-direct/range {v20 .. v30}, Lcom/shabakaty/downloader/j03;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Lcom/shabakaty/downloader/ar3;[Lcom/shabakaty/downloader/ar3;ZIZZ)V

    return-object v1

    .line 27
    :pswitch_1
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->B:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$b;

    iget v2, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$b;->c:I

    iget-boolean v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$b;->b:Z

    const/4 v6, 0x2

    if-ne v2, v6, :cond_c

    .line 28
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->r:Lcom/shabakaty/downloader/a13;

    .line 29
    iget v6, v2, Lcom/shabakaty/downloader/a13;->w:I

    .line 30
    iget v2, v2, Lcom/shabakaty/downloader/a13;->K:I

    goto :goto_6

    .line 31
    :cond_c
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->r:Lcom/shabakaty/downloader/a13;

    .line 32
    iget v6, v2, Lcom/shabakaty/downloader/a13;->x:I

    .line 33
    iget v2, v2, Lcom/shabakaty/downloader/a13;->L:I

    :goto_6
    if-eqz v1, :cond_d

    goto :goto_7

    .line 34
    :cond_d
    iget-object v6, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->r:Lcom/shabakaty/downloader/a13;

    .line 35
    iget v6, v6, Lcom/shabakaty/downloader/a13;->y:I

    :goto_7
    if-eqz v1, :cond_e

    goto :goto_8

    .line 36
    :cond_e
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->r:Lcom/shabakaty/downloader/a13;

    .line 37
    iget v2, v1, Lcom/shabakaty/downloader/a13;->M:I

    .line 38
    :goto_8
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    iget-object v7, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->t:Landroid/content/ComponentName;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 40
    invoke-static {v0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 41
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->A:Landroid/content/res/Resources;

    .line 42
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v6, :cond_f

    move-object v9, v3

    goto :goto_9

    .line 43
    :cond_f
    invoke-static {v3, v5, v6}, Landroidx/core/graphics/drawable/IconCompat;->b(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    move-object v9, v2

    :goto_9
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    const/16 v17, 0x1

    .line 44
    invoke-static {v1}, Lcom/shabakaty/downloader/m03;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    const/16 v18, 0x0

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_10

    move-object v14, v3

    goto :goto_a

    .line 48
    :cond_10
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/shabakaty/downloader/ar3;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/shabakaty/downloader/ar3;

    move-object v14, v1

    .line 49
    :goto_a
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_b

    .line 50
    :cond_11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/shabakaty/downloader/ar3;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Lcom/shabakaty/downloader/ar3;

    :goto_b
    move-object v13, v3

    .line 51
    new-instance v1, Lcom/shabakaty/downloader/j03;

    move-object v8, v1

    move/from16 v15, v17

    move/from16 v16, v18

    invoke-direct/range {v8 .. v18}, Lcom/shabakaty/downloader/j03;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Lcom/shabakaty/downloader/ar3;[Lcom/shabakaty/downloader/ar3;ZIZZ)V

    return-object v1

    .line 52
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->t:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 54
    invoke-static {v0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 55
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->r:Lcom/shabakaty/downloader/a13;

    .line 56
    iget v2, v1, Lcom/shabakaty/downloader/a13;->H:I

    .line 57
    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->A:Landroid/content/res/Resources;

    .line 58
    iget v1, v1, Lcom/shabakaty/downloader/a13;->V:I

    .line 59
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v2, :cond_12

    move-object v7, v3

    goto :goto_c

    .line 60
    :cond_12
    invoke-static {v3, v5, v2}, Landroidx/core/graphics/drawable/IconCompat;->b(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    move-object v7, v2

    :goto_c
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const/4 v15, 0x1

    .line 61
    invoke-static {v1}, Lcom/shabakaty/downloader/m03;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    const/16 v16, 0x0

    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_13

    move-object v12, v3

    goto :goto_d

    .line 65
    :cond_13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/shabakaty/downloader/ar3;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/shabakaty/downloader/ar3;

    move-object v12, v1

    .line 66
    :goto_d
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_e

    .line 67
    :cond_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/shabakaty/downloader/ar3;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Lcom/shabakaty/downloader/ar3;

    :goto_e
    move-object v11, v3

    .line 68
    new-instance v1, Lcom/shabakaty/downloader/j03;

    move-object v6, v1

    move v13, v15

    move/from16 v14, v16

    invoke-direct/range {v6 .. v16}, Lcom/shabakaty/downloader/j03;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Lcom/shabakaty/downloader/ar3;[Lcom/shabakaty/downloader/ar3;ZIZZ)V

    return-object v1

    .line 69
    :pswitch_3
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->B:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$b;

    iget-boolean v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$b;->g:Z

    if-eqz v1, :cond_15

    .line 70
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->t:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 72
    invoke-static {v0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    move-object v9, v1

    goto :goto_f

    :cond_15
    move-object v9, v3

    .line 73
    :goto_f
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->r:Lcom/shabakaty/downloader/a13;

    .line 74
    iget v2, v1, Lcom/shabakaty/downloader/a13;->A:I

    .line 75
    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->A:Landroid/content/res/Resources;

    .line 76
    iget v1, v1, Lcom/shabakaty/downloader/a13;->O:I

    .line 77
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v2, :cond_16

    move-object v7, v3

    goto :goto_10

    .line 78
    :cond_16
    invoke-static {v3, v5, v2}, Landroidx/core/graphics/drawable/IconCompat;->b(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    move-object v7, v2

    :goto_10
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const/4 v15, 0x1

    .line 79
    invoke-static {v1}, Lcom/shabakaty/downloader/m03;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    const/16 v16, 0x0

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_17

    move-object v12, v3

    goto :goto_11

    .line 83
    :cond_17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/shabakaty/downloader/ar3;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/shabakaty/downloader/ar3;

    move-object v12, v1

    .line 84
    :goto_11
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_12

    .line 85
    :cond_18
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/shabakaty/downloader/ar3;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Lcom/shabakaty/downloader/ar3;

    :goto_12
    move-object v11, v3

    .line 86
    new-instance v1, Lcom/shabakaty/downloader/j03;

    move-object v6, v1

    move v13, v15

    move/from16 v14, v16

    invoke-direct/range {v6 .. v16}, Lcom/shabakaty/downloader/j03;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Lcom/shabakaty/downloader/ar3;[Lcom/shabakaty/downloader/ar3;ZIZZ)V

    return-object v1

    .line 87
    :pswitch_4
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->B:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$b;

    iget-boolean v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$b;->f:Z

    if-eqz v1, :cond_19

    .line 88
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->t:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 90
    invoke-static {v0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    move-object v9, v1

    goto :goto_13

    :cond_19
    move-object v9, v3

    .line 91
    :goto_13
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->r:Lcom/shabakaty/downloader/a13;

    .line 92
    iget v2, v1, Lcom/shabakaty/downloader/a13;->z:I

    .line 93
    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->A:Landroid/content/res/Resources;

    .line 94
    iget v1, v1, Lcom/shabakaty/downloader/a13;->N:I

    .line 95
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v2, :cond_1a

    move-object v7, v3

    goto :goto_14

    .line 96
    :cond_1a
    invoke-static {v3, v5, v2}, Landroidx/core/graphics/drawable/IconCompat;->b(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    move-object v7, v2

    :goto_14
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const/4 v15, 0x1

    .line 97
    invoke-static {v1}, Lcom/shabakaty/downloader/m03;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    const/16 v16, 0x0

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 99
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1b

    move-object v12, v3

    goto :goto_15

    .line 101
    :cond_1b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/shabakaty/downloader/ar3;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/shabakaty/downloader/ar3;

    move-object v12, v1

    .line 102
    :goto_15
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_16

    .line 103
    :cond_1c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/shabakaty/downloader/ar3;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Lcom/shabakaty/downloader/ar3;

    :goto_16
    move-object v11, v3

    .line 104
    new-instance v1, Lcom/shabakaty/downloader/j03;

    move-object v6, v1

    move v13, v15

    move/from16 v14, v16

    invoke-direct/range {v6 .. v16}, Lcom/shabakaty/downloader/j03;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Lcom/shabakaty/downloader/ar3;[Lcom/shabakaty/downloader/ar3;ZIZZ)V

    return-object v1

    .line 105
    :pswitch_5
    iget-wide v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->x:J

    .line 106
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    iget-object v7, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->t:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 108
    invoke-virtual {v6, v15, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 109
    invoke-static {v0, v4, v6, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v23

    .line 110
    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->r:Lcom/shabakaty/downloader/a13;

    .line 111
    iget v6, v4, Lcom/shabakaty/downloader/a13;->E:I

    .line 112
    iget v7, v4, Lcom/shabakaty/downloader/a13;->S:I

    cmp-long v8, v1, v12

    if-nez v8, :cond_1d

    .line 113
    iget v6, v4, Lcom/shabakaty/downloader/a13;->F:I

    .line 114
    iget v7, v4, Lcom/shabakaty/downloader/a13;->T:I

    goto :goto_17

    :cond_1d
    cmp-long v8, v1, v18

    if-nez v8, :cond_1e

    .line 115
    iget v6, v4, Lcom/shabakaty/downloader/a13;->G:I

    .line 116
    iget v7, v4, Lcom/shabakaty/downloader/a13;->U:I

    .line 117
    :cond_1e
    :goto_17
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->A:Landroid/content/res/Resources;

    .line 118
    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v6, :cond_1f

    move-object/from16 v21, v3

    goto :goto_18

    .line 119
    :cond_1f
    invoke-static {v3, v5, v6}, Landroidx/core/graphics/drawable/IconCompat;->b(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    move-object/from16 v21, v2

    :goto_18
    new-instance v24, Landroid/os/Bundle;

    invoke-direct/range {v24 .. v24}, Landroid/os/Bundle;-><init>()V

    const/16 v29, 0x1

    .line 120
    invoke-static {v1}, Lcom/shabakaty/downloader/m03;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v22

    const/16 v30, 0x0

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 123
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_20

    move-object/from16 v26, v3

    goto :goto_19

    .line 124
    :cond_20
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lcom/shabakaty/downloader/ar3;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/shabakaty/downloader/ar3;

    move-object/from16 v26, v1

    .line 125
    :goto_19
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    goto :goto_1a

    .line 126
    :cond_21
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/shabakaty/downloader/ar3;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, [Lcom/shabakaty/downloader/ar3;

    :goto_1a
    move-object/from16 v25, v3

    .line 127
    new-instance v1, Lcom/shabakaty/downloader/j03;

    move-object/from16 v20, v1

    move/from16 v27, v29

    move/from16 v28, v30

    invoke-direct/range {v20 .. v30}, Lcom/shabakaty/downloader/j03;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Lcom/shabakaty/downloader/ar3;[Lcom/shabakaty/downloader/ar3;ZIZZ)V

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x655132e4 -> :sswitch_6
        -0x3855de4e -> :sswitch_5
        -0x3854c70e -> :sswitch_4
        -0x27d32f79 -> :sswitch_3
        -0x76b6783 -> :sswitch_2
        0xe0a3765 -> :sswitch_1
        0x51303e64 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    const-string v0, "notification"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->D:Landroid/app/NotificationManager;

    .line 2
    invoke-static {p0}, Lcom/shabakaty/downloader/tw;->d(Landroid/content/Context;)Lcom/shabakaty/downloader/tw;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->F:Lcom/shabakaty/downloader/tw;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/tw;->a()Lcom/shabakaty/downloader/vw;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/vw;->w:Lcom/shabakaty/downloader/uw;

    .line 5
    iget-object v1, v0, Lcom/shabakaty/downloader/uw;->u:Lcom/shabakaty/downloader/a13;

    .line 6
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->r:Lcom/shabakaty/downloader/a13;

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/uw;->W0()Lcom/shabakaty/downloader/ez1;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->s:Lcom/shabakaty/downloader/ez1;

    .line 8
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->A:Landroid/content/res/Resources;

    .line 9
    new-instance v1, Landroid/content/ComponentName;

    .line 10
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/uw;->r:Ljava/lang/String;

    .line 12
    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->t:Landroid/content/ComponentName;

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->r:Lcom/shabakaty/downloader/a13;

    .line 14
    iget-object v0, v0, Lcom/shabakaty/downloader/a13;->u:Ljava/lang/String;

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Landroid/content/ComponentName;

    .line 17
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->r:Lcom/shabakaty/downloader/a13;

    .line 18
    iget-object v2, v2, Lcom/shabakaty/downloader/a13;->u:Ljava/lang/String;

    .line 19
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->u:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->u:Landroid/content/ComponentName;

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->r:Lcom/shabakaty/downloader/a13;

    .line 22
    iget-wide v1, v0, Lcom/shabakaty/downloader/a13;->t:J

    .line 23
    iput-wide v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->x:J

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->A:Landroid/content/res/Resources;

    .line 25
    iget v0, v0, Lcom/shabakaty/downloader/a13;->I:I

    .line 26
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 27
    new-instance v1, Lcom/shabakaty/downloader/wy1;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0, v0}, Lcom/shabakaty/downloader/wy1;-><init>(III)V

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->z:Lcom/shabakaty/downloader/wy1;

    .line 28
    new-instance v0, Lcom/shabakaty/downloader/sm5;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->z:Lcom/shabakaty/downloader/wy1;

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/sm5;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/wy1;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->y:Lcom/shabakaty/downloader/sm5;

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->u:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->G:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->u:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 31
    :cond_1
    invoke-static {}, Lcom/shabakaty/downloader/uc3;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 32
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x2

    const-string v2, "cast_media_notification"

    const-string v3, "Cast"

    invoke-direct {v0, v2, v3, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x0

    .line 33
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 34
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->D:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_2
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->y:Lcom/shabakaty/downloader/sm5;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/sm5;->a()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->u:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->G:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    sget-object v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->H:Lcom/shabakaty/downloader/pk2;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 6
    iget-object v3, v1, Lcom/shabakaty/downloader/pk2;->a:Ljava/lang/String;

    const-string v4, "Unregistering trampoline BroadcastReceiver failed"

    invoke-virtual {v1, v4, v2}, Lcom/shabakaty/downloader/pk2;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 7
    sput-object v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->I:Ljava/lang/Runnable;

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->D:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "extra_media_info"

    .line 1
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/cast/MediaInfo;

    .line 2
    iget-object v3, v2, Lcom/google/android/gms/cast/MediaInfo;->u:Lcom/shabakaty/downloader/ip2;

    const-string v4, "extra_remote_media_client_player_state"

    const/4 v5, 0x0

    .line 3
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "extra_cast_device"

    .line 4
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/cast/CastDevice;

    .line 5
    new-instance v15, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$b;

    const/4 v14, 0x2

    const/4 v13, 0x1

    if-ne v4, v14, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 6
    :goto_0
    iget v2, v2, Lcom/google/android/gms/cast/MediaInfo;->s:I

    const-string v7, "com.google.android.gms.cast.metadata.TITLE"

    .line 7
    invoke-virtual {v3, v7}, Lcom/shabakaty/downloader/ip2;->o1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 8
    iget-object v6, v6, Lcom/google/android/gms/cast/CastDevice;->u:Ljava/lang/String;

    const-string v7, "extra_media_session_token"

    .line 9
    invoke-virtual {v1, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    move-object/from16 v16, v7

    check-cast v16, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    const-string v7, "extra_can_skip_next"

    .line 10
    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    const-string v7, "extra_can_skip_prev"

    .line 11
    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    move-object v7, v15

    move v8, v4

    move v9, v2

    move/from16 p2, v10

    move-object v10, v12

    move/from16 v17, v11

    move-object v11, v6

    move-object/from16 v18, v12

    move-object/from16 v12, v16

    move/from16 v13, v17

    const/16 v16, 0x2

    move/from16 v14, p2

    invoke-direct/range {v7 .. v14}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$b;-><init>(ZILjava/lang/String;Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;ZZ)V

    const-string v7, "extra_media_notification_force_update"

    .line 12
    invoke-virtual {v1, v7, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 13
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->B:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$b;

    if-eqz v1, :cond_1

    .line 14
    iget-boolean v7, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$b;->b:Z

    if-ne v4, v7, :cond_1

    iget v4, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$b;->c:I

    if-ne v2, v4, :cond_1

    iget-object v2, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$b;->d:Ljava/lang/String;

    move-object/from16 v4, v18

    .line 15
    invoke-static {v4, v2}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$b;->e:Ljava/lang/String;

    .line 16
    invoke-static {v6, v2}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$b;->f:Z

    move/from16 v4, v17

    if-ne v4, v2, :cond_1

    iget-boolean v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$b;->g:Z

    move/from16 v2, p2

    if-ne v2, v1, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    if-nez v13, :cond_3

    .line 17
    :cond_2
    iput-object v15, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->B:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$b;

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->c()V

    .line 19
    :cond_3
    new-instance v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$a;

    .line 20
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->s:Lcom/shabakaty/downloader/ez1;

    if-eqz v2, :cond_4

    .line 21
    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->z:Lcom/shabakaty/downloader/wy1;

    invoke-virtual {v2, v3, v4}, Lcom/shabakaty/downloader/ez1;->b(Lcom/shabakaty/downloader/ip2;Lcom/shabakaty/downloader/wy1;)Lcom/shabakaty/downloader/s55;

    move-result-object v2

    goto :goto_2

    .line 22
    :cond_4
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ip2;->D1()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 23
    iget-object v2, v3, Lcom/shabakaty/downloader/ip2;->r:Ljava/util/List;

    .line 24
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/s55;

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 25
    :goto_2
    invoke-direct {v1, v2}, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$a;-><init>(Lcom/shabakaty/downloader/s55;)V

    .line 26
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->C:Lcom/google/android/gms/cast/framework/media/MediaNotificationService$a;

    if-eqz v2, :cond_6

    .line 27
    iget-object v3, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$a;->a:Landroid/net/Uri;

    iget-object v2, v2, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$a;->a:Landroid/net/Uri;

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/yw;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v5, 0x1

    :cond_6
    if-nez v5, :cond_7

    .line 28
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->y:Lcom/shabakaty/downloader/sm5;

    new-instance v3, Lcom/google/android/gms/cast/framework/media/b;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/cast/framework/media/b;-><init>(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;Lcom/google/android/gms/cast/framework/media/MediaNotificationService$a;)V

    .line 29
    iput-object v3, v2, Lcom/shabakaty/downloader/sm5;->f:Lcom/shabakaty/downloader/ce5;

    .line 30
    iget-object v1, v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService$a;->a:Landroid/net/Uri;

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/sm5;->c(Landroid/net/Uri;)Z

    .line 31
    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->E:Landroid/app/Notification;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 32
    new-instance v1, Lcom/shabakaty/downloader/wk6;

    move/from16 v2, p3

    invoke-direct {v1, v0, v2}, Lcom/shabakaty/downloader/wk6;-><init>(Lcom/google/android/gms/cast/framework/media/MediaNotificationService;I)V

    sput-object v1, Lcom/google/android/gms/cast/framework/media/MediaNotificationService;->I:Ljava/lang/Runnable;

    return v16
.end method
