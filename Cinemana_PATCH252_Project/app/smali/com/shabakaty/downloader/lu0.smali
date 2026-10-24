.class public Lcom/shabakaty/downloader/lu0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-messaging@@22.0.0"


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/shabakaty/downloader/c13;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/shabakaty/downloader/c13;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/shabakaty/downloader/lu0;->a:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/shabakaty/downloader/lu0;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/shabakaty/downloader/lu0;->c:Lcom/shabakaty/downloader/c13;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 15

    iget-object v0, p0, Lcom/shabakaty/downloader/lu0;->c:Lcom/shabakaty/downloader/c13;

    const-string v1, "gcm.n.noui"

    .line 1
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/c13;->i(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/lu0;->b:Landroid/content/Context;

    const-string v1, "keyguard"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 4
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v2, p0, Lcom/shabakaty/downloader/lu0;->b:Landroid/content/Context;

    const-string v3, "activity"

    .line 6
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 7
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 9
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v0, :cond_2

    .line 10
    iget v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    return v1

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/lu0;->c:Lcom/shabakaty/downloader/c13;

    const-string v2, "gcm.n.image"

    .line 12
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/c13;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "FirebaseMessaging"

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    :try_start_0
    new-instance v2, Lcom/shabakaty/downloader/vy1;

    .line 14
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Lcom/shabakaty/downloader/vy1;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    nop

    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Not downloading image, bad URL: "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_7

    .line 16
    iget-object v0, p0, Lcom/shabakaty/downloader/lu0;->a:Ljava/util/concurrent/Executor;

    .line 17
    new-instance v4, Lcom/shabakaty/downloader/kv6;

    .line 18
    invoke-direct {v4, v2}, Lcom/shabakaty/downloader/kv6;-><init>(Lcom/shabakaty/downloader/vy1;)V

    invoke-static {v0, v4}, Lcom/shabakaty/downloader/kl4;->c(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/shabakaty/downloader/uk4;

    move-result-object v0

    iput-object v0, v2, Lcom/shabakaty/downloader/vy1;->s:Lcom/shabakaty/downloader/uk4;

    .line 19
    :cond_7
    iget-object v0, p0, Lcom/shabakaty/downloader/lu0;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/shabakaty/downloader/lu0;->c:Lcom/shabakaty/downloader/c13;

    .line 20
    sget-object v5, Lcom/shabakaty/downloader/j70;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v5, "Couldn\'t get own application info: "

    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x80

    .line 22
    :try_start_1
    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 23
    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v6, :cond_8

    goto :goto_5

    :catch_1
    move-exception v6

    .line 24
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x23

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_8
    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 26
    :goto_5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "gcm.n.android_channel_id"

    .line 27
    invoke-virtual {v4, v8}, Lcom/shabakaty/downloader/c13;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 28
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v10, 0x3

    const/16 v11, 0x1a

    if-ge v9, v11, :cond_9

    goto/16 :goto_8

    .line 29
    :cond_9
    :try_start_2
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    if-lt v9, v11, :cond_f

    const-class v9, Landroid/app/NotificationManager;

    .line 31
    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 32
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 33
    invoke-virtual {v9, v8}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v11

    if-eqz v11, :cond_a

    goto :goto_9

    .line 34
    :cond_a
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x7a

    invoke-direct {v12, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "Notification Channel requested ("

    const-string v13, ") has not been created by the app. Manifest configuration, or default, value will be used."

    invoke-static {v12, v11, v8, v13, v3}, Lcom/shabakaty/downloader/i70;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string v8, "com.google.firebase.messaging.default_notification_channel_id"

    .line 35
    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 36
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 37
    invoke-virtual {v9, v8}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v11

    if-eqz v11, :cond_c

    goto :goto_9

    :cond_c
    const-string v8, "Notification Channel set in AndroidManifest.xml has not been created by the app. Default value will be used."

    .line 38
    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_d
    const-string v8, "Missing Default Notification Channel metadata in AndroidManifest. Default value will be used."

    .line 39
    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    const-string v8, "fcm_fallback_notification_channel"

    .line 40
    invoke-virtual {v9, v8}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v11

    if-nez v11, :cond_10

    .line 41
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "fcm_fallback_notification_channel_label"

    const-string v14, "string"

    .line 43
    invoke-virtual {v11, v13, v14, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_e

    const-string v11, "String resource \"fcm_fallback_notification_channel_label\" is not found. Using default string channel name."

    .line 44
    invoke-static {v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "Misc"

    goto :goto_7

    .line 45
    :cond_e
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 46
    :goto_7
    new-instance v12, Landroid/app/NotificationChannel;

    invoke-direct {v12, v8, v11, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v9, v12}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    goto :goto_9

    :catch_2
    :cond_f
    :goto_8
    const/4 v8, 0x0

    .line 47
    :cond_10
    :goto_9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 49
    new-instance v11, Lcom/shabakaty/downloader/m03;

    invoke-direct {v11, v0, v8}, Lcom/shabakaty/downloader/m03;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v8, "gcm.n.title"

    .line 50
    invoke-virtual {v4, v9, v7, v8}, Lcom/shabakaty/downloader/c13;->l(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 51
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_11

    .line 52
    invoke-virtual {v11, v8}, Lcom/shabakaty/downloader/m03;->g(Ljava/lang/CharSequence;)Lcom/shabakaty/downloader/m03;

    :cond_11
    const-string v8, "gcm.n.body"

    .line 53
    invoke-virtual {v4, v9, v7, v8}, Lcom/shabakaty/downloader/c13;->l(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 54
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_12

    .line 55
    invoke-virtual {v11, v8}, Lcom/shabakaty/downloader/m03;->f(Ljava/lang/CharSequence;)Lcom/shabakaty/downloader/m03;

    .line 56
    new-instance v12, Lcom/shabakaty/downloader/l03;

    invoke-direct {v12}, Lcom/shabakaty/downloader/l03;-><init>()V

    invoke-virtual {v12, v8}, Lcom/shabakaty/downloader/l03;->k(Ljava/lang/CharSequence;)Lcom/shabakaty/downloader/l03;

    invoke-virtual {v11, v12}, Lcom/shabakaty/downloader/m03;->m(Lcom/shabakaty/downloader/r03;)Lcom/shabakaty/downloader/m03;

    :cond_12
    const-string v8, "gcm.n.icon"

    .line 57
    invoke-virtual {v4, v8}, Lcom/shabakaty/downloader/c13;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 58
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_15

    const-string v12, "drawable"

    .line 59
    invoke-virtual {v9, v8, v12, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_13

    .line 60
    invoke-static {v9, v12}, Lcom/shabakaty/downloader/j70;->a(Landroid/content/res/Resources;I)Z

    move-result v13

    if-nez v13, :cond_19

    :cond_13
    const-string v12, "mipmap"

    .line 61
    invoke-virtual {v9, v8, v12, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_14

    .line 62
    invoke-static {v9, v12}, Lcom/shabakaty/downloader/j70;->a(Landroid/content/res/Resources;I)Z

    move-result v13

    if-nez v13, :cond_19

    .line 63
    :cond_14
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    new-instance v13, Ljava/lang/StringBuilder;

    add-int/lit8 v12, v12, 0x3d

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Icon resource "

    const-string v14, " not found. Notification will use default icon."

    invoke-static {v13, v12, v8, v14, v3}, Lcom/shabakaty/downloader/i70;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    const-string v8, "com.google.firebase.messaging.default_notification_icon"

    .line 64
    invoke-virtual {v6, v8, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_16

    .line 65
    invoke-static {v9, v8}, Lcom/shabakaty/downloader/j70;->a(Landroid/content/res/Resources;I)Z

    move-result v12

    if-nez v12, :cond_17

    .line 66
    :cond_16
    :try_start_3
    invoke-virtual {v10, v7, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget v5, v12, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move v12, v5

    goto :goto_a

    :catch_3
    move-exception v12

    .line 67
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    new-instance v14, Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x23

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    move v12, v8

    :goto_a
    if-eqz v12, :cond_18

    .line 68
    invoke-static {v9, v12}, Lcom/shabakaty/downloader/j70;->a(Landroid/content/res/Resources;I)Z

    move-result v5

    if-nez v5, :cond_19

    :cond_18
    const v12, 0x1080093

    .line 69
    :cond_19
    iget-object v5, v11, Lcom/shabakaty/downloader/m03;->B:Landroid/app/Notification;

    iput v12, v5, Landroid/app/Notification;->icon:I

    const-string v5, "gcm.n.sound2"

    .line 70
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/c13;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 71
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1a

    const-string v5, "gcm.n.sound"

    .line 72
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/c13;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 73
    :cond_1a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v12, 0x2

    if-eqz v8, :cond_1b

    const/4 v5, 0x0

    goto :goto_b

    :cond_1b
    const-string v8, "default"

    .line 74
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c

    const-string v8, "raw"

    .line 75
    invoke-virtual {v9, v5, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_1c

    .line 76
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    new-instance v13, Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x18

    add-int/2addr v8, v9

    invoke-direct {v13, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "android.resource://"

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/raw/"

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_b

    .line 77
    :cond_1c
    invoke-static {v12}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v5

    :goto_b
    if-eqz v5, :cond_1d

    .line 78
    invoke-virtual {v11, v5}, Lcom/shabakaty/downloader/m03;->l(Landroid/net/Uri;)Lcom/shabakaty/downloader/m03;

    :cond_1d
    const-string v5, "gcm.n.click_action"

    .line 79
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/c13;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 80
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1e

    new-instance v8, Landroid/content/Intent;

    .line 81
    invoke-direct {v8, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v8, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x10000000

    .line 83
    invoke-virtual {v8, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_d

    :cond_1e
    const-string v5, "gcm.n.link_android"

    .line 84
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/c13;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 85
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1f

    const-string v5, "gcm.n.link"

    .line 86
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/c13;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 87
    :cond_1f
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_20

    .line 88
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    goto :goto_c

    :cond_20
    const/4 v5, 0x0

    :goto_c
    if-eqz v5, :cond_21

    .line 89
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    .line 90
    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v8, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-virtual {v8, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_d

    .line 93
    :cond_21
    invoke-virtual {v10, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    if-nez v8, :cond_22

    const-string v5, "No activity found to launch app"

    .line 94
    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    :goto_d
    const/16 v5, 0x17

    const-string v7, "google.c.a.e"

    if-nez v8, :cond_23

    const/4 v8, 0x0

    goto :goto_12

    :cond_23
    const/high16 v9, 0x4000000

    .line 95
    invoke-virtual {v8, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 96
    new-instance v9, Landroid/os/Bundle;

    iget-object v10, v4, Lcom/shabakaty/downloader/c13;->b:Landroid/os/Bundle;

    .line 97
    invoke-direct {v9, v10}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object v10, v4, Lcom/shabakaty/downloader/c13;->b:Landroid/os/Bundle;

    .line 98
    invoke-virtual {v10}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_24
    :goto_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_27

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "google.c."

    .line 99
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_26

    const-string v14, "gcm.n."

    .line 100
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_26

    const-string v14, "gcm.notification."

    .line 101
    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_25

    goto :goto_f

    :cond_25
    const/4 v14, 0x0

    goto :goto_10

    :cond_26
    :goto_f
    const/4 v14, 0x1

    :goto_10
    if-eqz v14, :cond_24

    .line 102
    invoke-virtual {v9, v13}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_e

    .line 103
    :cond_27
    invoke-virtual {v8, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 104
    invoke-virtual {v4, v7}, Lcom/shabakaty/downloader/c13;->i(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_28

    .line 105
    invoke-virtual {v4}, Lcom/shabakaty/downloader/c13;->n()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "gcm.n.analytics_data"

    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 106
    :cond_28
    sget-object v9, Lcom/shabakaty/downloader/j70;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 107
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v9

    .line 108
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v10, v5, :cond_29

    const/high16 v10, 0x44000000    # 512.0f

    goto :goto_11

    :cond_29
    const/high16 v10, 0x40000000    # 2.0f

    .line 109
    :goto_11
    invoke-static {v0, v9, v8, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 110
    :goto_12
    iput-object v8, v11, Lcom/shabakaty/downloader/m03;->g:Landroid/app/PendingIntent;

    .line 111
    invoke-virtual {v4, v7}, Lcom/shabakaty/downloader/c13;->i(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2a

    const/4 v5, 0x0

    goto :goto_14

    .line 112
    :cond_2a
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.google.firebase.messaging.NOTIFICATION_DISMISS"

    .line 113
    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v4}, Lcom/shabakaty/downloader/c13;->n()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v7

    .line 115
    sget-object v8, Lcom/shabakaty/downloader/j70;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 116
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v8

    .line 117
    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.google.firebase.MESSAGING_EVENT"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v10, Landroid/content/ComponentName;

    const-string v13, "com.google.firebase.iid.FirebaseInstanceIdReceiver"

    invoke-direct {v10, v0, v13}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 118
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "wrapped_intent"

    .line 119
    invoke-virtual {v9, v10, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v7

    .line 120
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v5, :cond_2b

    const/high16 v5, 0x44000000    # 512.0f

    goto :goto_13

    :cond_2b
    const/high16 v5, 0x40000000    # 2.0f

    .line 121
    :goto_13
    invoke-static {v0, v8, v7, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    :goto_14
    if-eqz v5, :cond_2c

    .line 122
    iget-object v7, v11, Lcom/shabakaty/downloader/m03;->B:Landroid/app/Notification;

    iput-object v5, v7, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    :cond_2c
    const-string v5, "gcm.n.color"

    .line 123
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/c13;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 124
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2d

    .line 125
    :try_start_4
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_15

    .line 126
    :catch_4
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x38

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Color is invalid: "

    const-string v9, ". Notification will use default color."

    invoke-static {v8, v7, v5, v9, v3}, Lcom/shabakaty/downloader/i70;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2d
    const-string v5, "com.google.firebase.messaging.default_notification_color"

    .line 127
    invoke-virtual {v6, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2e

    .line 128
    :try_start_5
    invoke-static {v0, v5}, Lcom/shabakaty/downloader/ld0;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_15

    :catch_5
    const-string v0, "Cannot find the color resource referenced in AndroidManifest."

    .line 129
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 v0, 0x0

    :goto_15
    if-eqz v0, :cond_2f

    .line 130
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 131
    iput v0, v11, Lcom/shabakaty/downloader/m03;->u:I

    :cond_2f
    const-string v0, "gcm.n.sticky"

    .line 132
    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/c13;->i(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/16 v5, 0x10

    .line 133
    invoke-virtual {v11, v5, v0}, Lcom/shabakaty/downloader/m03;->i(IZ)V

    const-string v0, "gcm.n.local_only"

    .line 134
    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/c13;->i(Ljava/lang/String;)Z

    move-result v0

    .line 135
    iput-boolean v0, v11, Lcom/shabakaty/downloader/m03;->s:Z

    const-string v0, "gcm.n.ticker"

    .line 136
    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/c13;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 137
    iget-object v5, v11, Lcom/shabakaty/downloader/m03;->B:Landroid/app/Notification;

    invoke-static {v0}, Lcom/shabakaty/downloader/m03;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    :cond_30
    const-string v0, "gcm.n.notification_priority"

    .line 138
    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/c13;->j(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_31

    goto :goto_16

    .line 139
    :cond_31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, -0x2

    if-lt v5, v6, :cond_32

    .line 140
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v12, :cond_33

    .line 141
    :cond_32
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x48

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "notificationPriority is invalid "

    const-string v7, ". Skipping setting notificationPriority."

    invoke-static {v6, v5, v0, v7, v3}, Lcom/shabakaty/downloader/i70;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_16
    const/4 v0, 0x0

    :cond_33
    if-eqz v0, :cond_34

    .line 142
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 143
    iput v0, v11, Lcom/shabakaty/downloader/m03;->j:I

    :cond_34
    const-string v0, "gcm.n.visibility"

    .line 144
    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/c13;->j(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    const-string v5, "NotificationParams"

    if-nez v0, :cond_35

    goto :goto_17

    .line 145
    :cond_35
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, -0x1

    if-lt v6, v7, :cond_36

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_37

    .line 146
    :cond_36
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x35

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "visibility is invalid: "

    const-string v8, ". Skipping setting visibility."

    invoke-static {v7, v6, v0, v8, v5}, Lcom/shabakaty/downloader/i70;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_17
    const/4 v0, 0x0

    :cond_37
    if-eqz v0, :cond_38

    .line 147
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 148
    iput v0, v11, Lcom/shabakaty/downloader/m03;->v:I

    :cond_38
    const-string v0, "gcm.n.notification_count"

    .line 149
    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/c13;->j(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_39

    goto :goto_18

    .line 150
    :cond_39
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gez v6, :cond_3a

    .line 151
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x43

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "notificationCount is invalid: "

    const-string v8, ". Skipping setting notificationCount."

    invoke-static {v7, v6, v0, v8, v3}, Lcom/shabakaty/downloader/i70;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_18
    const/4 v0, 0x0

    :cond_3a
    if-eqz v0, :cond_3b

    .line 152
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 153
    iput v0, v11, Lcom/shabakaty/downloader/m03;->i:I

    :cond_3b
    const-string v0, "gcm.n.event_time"

    .line 154
    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/c13;->d(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3c

    const/4 v6, 0x1

    .line 155
    iput-boolean v6, v11, Lcom/shabakaty/downloader/m03;->k:Z

    .line 156
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 157
    iget-object v0, v11, Lcom/shabakaty/downloader/m03;->B:Landroid/app/Notification;

    iput-wide v6, v0, Landroid/app/Notification;->when:J

    :cond_3c
    const-string v0, "gcm.n.vibrate_timings"

    .line 158
    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/c13;->k(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_3d

    goto :goto_1a

    .line 159
    :cond_3d
    :try_start_6
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_3e

    .line 160
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    new-array v7, v6, [J

    const/4 v8, 0x0

    :goto_19
    if-ge v8, v6, :cond_3f

    .line 161
    invoke-virtual {v0, v8}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v9

    aput-wide v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_19

    .line 162
    :cond_3e
    new-instance v6, Lorg/json/JSONException;

    const-string v7, "vibrateTimings have invalid length"

    invoke-direct {v6, v7}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    .line 163
    :catch_6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x4a

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "User defined vibrateTimings is invalid: "

    const-string v8, ". Skipping setting vibrateTimings."

    invoke-static {v7, v6, v0, v8, v5}, Lcom/shabakaty/downloader/i70;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    const/4 v7, 0x0

    :cond_3f
    if-eqz v7, :cond_40

    .line 164
    iget-object v0, v11, Lcom/shabakaty/downloader/m03;->B:Landroid/app/Notification;

    iput-object v7, v0, Landroid/app/Notification;->vibrate:[J

    :cond_40
    const-string v0, ". Skipping setting LightSettings"

    const-string v6, "LightSettings is invalid: "

    const-string v7, "gcm.n.light_settings"

    .line 165
    invoke-virtual {v4, v7}, Lcom/shabakaty/downloader/c13;->k(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-nez v7, :cond_41

    goto :goto_1b

    :cond_41
    const/4 v8, 0x3

    new-array v9, v8, [I

    .line 166
    :try_start_7
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ne v10, v8, :cond_43

    .line 167
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    .line 168
    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    const/high16 v10, -0x1000000

    if-eq v8, v10, :cond_42

    aput v8, v9, v1

    const/4 v8, 0x1

    .line 169
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->optInt(I)I

    move-result v10

    aput v10, v9, v8

    .line 170
    invoke-virtual {v7, v12}, Lorg/json/JSONArray;->optInt(I)I

    move-result v8

    aput v8, v9, v12

    goto :goto_1c

    .line 171
    :cond_42
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Transparent color is invalid"

    .line 172
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 173
    :cond_43
    new-instance v8, Lorg/json/JSONException;

    const-string v9, "lightSettings don\'t have all three fields"

    invoke-direct {v8, v9}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    move-exception v8

    .line 174
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 175
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    new-instance v13, Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x3c

    add-int/2addr v9, v10

    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, ". "

    invoke-static {v13, v6, v7, v9, v8}, Lcom/shabakaty/downloader/u32;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 177
    :catch_8
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x3a

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v9, v6, v7, v0, v5}, Lcom/shabakaty/downloader/i70;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1b
    const/4 v9, 0x0

    :goto_1c
    if-eqz v9, :cond_44

    .line 178
    aget v0, v9, v1

    const/4 v5, 0x1

    aget v5, v9, v5

    aget v6, v9, v12

    .line 179
    invoke-virtual {v11, v0, v5, v6}, Lcom/shabakaty/downloader/m03;->k(III)Lcom/shabakaty/downloader/m03;

    :cond_44
    const-string v0, "gcm.n.default_sound"

    .line 180
    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/c13;->i(Ljava/lang/String;)Z

    move-result v0

    const-string v5, "gcm.n.default_vibrate_timings"

    .line 181
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/c13;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45

    or-int/lit8 v0, v0, 0x2

    :cond_45
    const-string v5, "gcm.n.default_light_settings"

    .line 182
    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/c13;->i(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_46

    or-int/lit8 v0, v0, 0x4

    .line 183
    :cond_46
    invoke-virtual {v11, v0}, Lcom/shabakaty/downloader/m03;->h(I)Lcom/shabakaty/downloader/m03;

    const-string v0, "gcm.n.tag"

    .line 184
    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/c13;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_47

    goto :goto_1d

    .line 186
    :cond_47
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v6, 0x25

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "FCM-Notification:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1d
    if-nez v2, :cond_48

    goto :goto_1e

    .line 187
    :cond_48
    :try_start_8
    iget-object v4, v2, Lcom/shabakaty/downloader/vy1;->s:Lcom/shabakaty/downloader/uk4;

    const-string v5, "null reference"

    .line 188
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide/16 v5, 0x5

    .line 189
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v4, v5, v6, v7}, Lcom/shabakaty/downloader/kl4;->b(Lcom/shabakaty/downloader/uk4;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    .line 190
    invoke-virtual {v11, v4}, Lcom/shabakaty/downloader/m03;->j(Landroid/graphics/Bitmap;)Lcom/shabakaty/downloader/m03;

    .line 191
    new-instance v5, Lcom/shabakaty/downloader/k03;

    invoke-direct {v5}, Lcom/shabakaty/downloader/k03;-><init>()V

    .line 192
    iput-object v4, v5, Lcom/shabakaty/downloader/k03;->e:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    .line 193
    invoke-virtual {v5, v4}, Lcom/shabakaty/downloader/k03;->k(Landroid/graphics/Bitmap;)Lcom/shabakaty/downloader/k03;

    invoke-virtual {v11, v5}, Lcom/shabakaty/downloader/m03;->m(Lcom/shabakaty/downloader/r03;)Lcom/shabakaty/downloader/m03;
    :try_end_8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_8} :catch_9

    goto :goto_1e

    :catch_9
    const-string v4, "Failed to download image in time, showing notification without it"

    .line 194
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {v2}, Lcom/shabakaty/downloader/vy1;->close()V

    goto :goto_1e

    :catch_a
    const-string v4, "Interrupted while downloading image, showing notification without it"

    .line 196
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {v2}, Lcom/shabakaty/downloader/vy1;->close()V

    .line 198
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1e

    :catch_b
    move-exception v2

    .line 199
    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1a

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Failed to download image: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1e
    const/4 v2, 0x3

    .line 200
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_49

    const-string v2, "Showing notification"

    .line 201
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_49
    iget-object v2, p0, Lcom/shabakaty/downloader/lu0;->b:Landroid/content/Context;

    const-string v3, "notification"

    .line 202
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 203
    invoke-virtual {v11}, Lcom/shabakaty/downloader/m03;->c()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    const/4 v0, 0x1

    return v0
.end method
