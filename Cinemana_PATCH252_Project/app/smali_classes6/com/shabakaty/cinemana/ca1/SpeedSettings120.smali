.class public final Lcom/shabakaty/cinemana/ca1/SpeedSettings120;
.super Ljava/lang/Object;
.source "SpeedSettings120.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static label(I)Ljava/lang/String;
    .locals 7

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u0633\u0631\u0639\u0629 \u0627\u0644\u062a\u062d\u0645\u064a\u0644: "

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p0, :cond_0

    const-string p0, "\u063a\u064a\u0631 \u0645\u062d\u062f\u0648\u062f"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    int-to-double v3, p0

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string p0, "%.1f MB/s"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$settings$0(Ljava/io/File;I)V
    .locals 2

    .line 15
    :try_start_0
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Speed120;->save(Ljava/io/File;I)V

    const-class p0, Lcom/shabakaty/cinemana/ca1/Speed120;

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v0, 0x0

    :try_start_1
    sput-wide v0, Lcom/shabakaty/cinemana/ca1/Speed120;->lastPoll:J

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "speed_save_error120"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$settings$1(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 14
    invoke-virtual {p5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onProgressChanged"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 p3, 0x2

    aget-object p3, p6, p3

    invoke-virtual {p2, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    new-array p0, v1, [Ljava/lang/Object;

    aget-object p2, p6, v1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/shabakaty/cinemana/ca1/SpeedSettings120;->label(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, v2

    const-string p2, "setText"

    invoke-static {p1, p2, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onStopTrackingTouch"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "getProgress"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p2, p0, p1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    sget-object p1, Lcom/shabakaty/cinemana/ca1/Speed120;->settingsWriter:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/shabakaty/cinemana/ca1/SpeedSettings120$$ExternalSyntheticLambda1;

    invoke-direct {p2, p3, p0}, Lcom/shabakaty/cinemana/ca1/SpeedSettings120$$ExternalSyntheticLambda1;-><init>(Ljava/io/File;I)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {p5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "SpeedSettings120"

    return-object p0

    :cond_3
    invoke-virtual {p5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "hashCode"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {p4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "equals"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    aget-object p0, p6, v2

    if-ne p4, p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$settings$2(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 4

    .line 19
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "setProgress"

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, p0, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "setText"

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/shabakaty/cinemana/ca1/SpeedSettings120;->label(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    invoke-static {p3, p0, p1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "speed_ui_error120"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$settings$3(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    .line 19
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Speed120;->poll()I

    move-result v0

    :try_start_0
    const-string v1, "post"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Lcom/shabakaty/cinemana/ca1/SpeedSettings120$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1, p2, v0, p3}, Lcom/shabakaty/cinemana/ca1/SpeedSettings120$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 p1, 0x0

    aput-object v3, v2, p1

    invoke-static {p0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "speed_ui_error120"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static settings(Ljava/lang/Object;)V
    .locals 9

    .line 9
    const-string v0, "findViewWithTag"

    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ca1_speed120_title"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p0, v0, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v5, "ca1_speed120_seek"

    aput-object v5, v3, v4

    invoke-static {p0, v0, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 10
    :cond_0
    const-string v3, "getContext"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Speed120;->resolve(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v3

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Speed120;->attach(Ljava/lang/Object;)V

    .line 11
    const-string p0, "android.os.Handler"

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "android.os.Looper"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getMainLooper"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {p0, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 12
    new-instance v5, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    const-string v6, "android.widget.SeekBar$OnSeekBarChangeListener"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 13
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Class;

    aput-object v6, v8, v4

    new-instance v6, Lcom/shabakaty/cinemana/ca1/SpeedSettings120$$ExternalSyntheticLambda2;

    invoke-direct {v6, v5, v2, v0, v3}, Lcom/shabakaty/cinemana/ca1/SpeedSettings120$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;Ljava/lang/Object;Ljava/io/File;)V

    invoke-static {v7, v8, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    .line 17
    const-string v6, "setOnSeekBarChangeListener"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v3, v7, v4

    invoke-static {v0, v6, v7}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string v3, "android.content.res.ColorStateList"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v6, "valueOf"

    new-array v7, v1, [Ljava/lang/Object;

    const v8, -0x26dcd0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v3, v6, v7}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v6, "setProgressTintList"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v3, v7, v4

    invoke-static {v0, v6, v7}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "setThumbTintList"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v4

    invoke-static {v0, v6, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v1, Lcom/shabakaty/cinemana/ca1/Speed120;->settingsWriter:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/shabakaty/cinemana/ca1/SpeedSettings120$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v5, v0, v2}, Lcom/shabakaty/cinemana/ca1/SpeedSettings120$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception p0

    const-string v0, "speed_settings_error120"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method
