.class public final Lcom/shabakaty/cinemana/ca1/Remote98;
.super Ljava/lang/Object;
.source "Remote98.java"


# static fields
.field static final network:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 7
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v7, Lcom/shabakaty/cinemana/ca1/Remote98$$ExternalSyntheticLambda1;

    invoke-direct {v7}, Lcom/shabakaty/cinemana/ca1/Remote98$$ExternalSyntheticLambda1;-><init>()V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v9, Lcom/shabakaty/cinemana/ca1/Remote98;->network:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static agent(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 6
    :try_start_0
    const-string v0, "view"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/R94;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getViewModel"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/R94;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "h"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/R94;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "a"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/R94;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "c"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/R94;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return-object p0

    :catch_0
    move-exception p0

    :cond_0
    const-string p0, "http.agent"

    const-string v0, "Cinemana"

    invoke-static {p0, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static event(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 5
    :try_start_0
    const-string v0, "c"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/R94;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/Native98;->event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    return-void
.end method

.method static ffmpeg(Ljava/lang/Object;Ljava/lang/String;J)Landroid/graphics/Bitmap;
    .locals 16

    .line 9
    move-object/from16 v1, p0

    const-string v2, "preview_remote_failed"

    const-string v3, "frameProcess"

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "c"

    invoke-static {v1, v5}, Lcom/shabakaty/cinemana/ca1/R94;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-string v8, "libffmpeg.so"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->canExecute()Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-nez v7, :cond_0

    :try_start_1
    invoke-static {v1, v3, v4}, Lcom/shabakaty/cinemana/ca1/Remote98;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-object v4

    :cond_0
    :try_start_2
    const-string v7, "ca1_preview98_"

    const-string v8, ".jpg"

    invoke-virtual {v5}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-static {v7, v8, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    const/16 v7, 0x14

    :try_start_3
    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const-string v6, "-nostdin"

    const/4 v9, 0x1

    aput-object v6, v7, v9

    const-string v6, "-loglevel"

    const/4 v10, 0x2

    aput-object v6, v7, v10

    const-string v6, "error"

    const/4 v10, 0x3

    aput-object v6, v7, v10

    const-string v6, "-y"

    const/4 v10, 0x4

    aput-object v6, v7, v10

    const-string v6, "-rw_timeout"

    const/4 v10, 0x5

    aput-object v6, v7, v10

    const-string v6, "5000000"

    const/4 v10, 0x6

    aput-object v6, v7, v10

    const-string v6, "-user_agent"

    const/4 v10, 0x7

    aput-object v6, v7, v10

    invoke-static/range {p0 .. p0}, Lcom/shabakaty/cinemana/ca1/Remote98;->agent(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v10, 0x8

    aput-object v6, v7, v10

    const-string v6, "-ss"

    const/16 v10, 0x9

    aput-object v6, v7, v10

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v10, "%.0f"

    new-array v11, v9, [Ljava/lang/Object;

    move-wide/from16 v12, p2

    long-to-double v12, v12

    const-wide v14, 0x408f400000000000L    # 1000.0

    div-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v6, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v10, 0xa

    aput-object v6, v7, v10

    const-string v6, "-i"

    const/16 v10, 0xb

    aput-object v6, v7, v10

    const/16 v6, 0xc

    aput-object p1, v7, v6

    const-string v6, "-frames:v"

    const/16 v10, 0xd

    aput-object v6, v7, v10

    const-string v6, "1"

    const/16 v10, 0xe

    aput-object v6, v7, v10

    const-string v6, "-vf"

    const/16 v10, 0xf

    aput-object v6, v7, v10

    const-string v6, "scale=240:135:force_original_aspect_ratio=decrease"

    const/16 v10, 0x10

    aput-object v6, v7, v10

    const-string v6, "-f"

    const/16 v10, 0x11

    aput-object v6, v7, v10

    const-string v6, "image2"

    const/16 v10, 0x12

    aput-object v6, v7, v10

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v10, 0x13

    aput-object v6, v7, v10

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    new-instance v7, Ljava/lang/ProcessBuilder;

    invoke-direct {v7, v6}, Ljava/lang/ProcessBuilder;-><init>(Ljava/util/List;)V

    invoke-virtual {v7, v9}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-static {v1, v3, v6}, Lcom/shabakaty/cinemana/ca1/Remote98;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    new-instance v9, Lcom/shabakaty/cinemana/ca1/Remote98$$ExternalSyntheticLambda0;

    invoke-direct {v9, v6}, Lcom/shabakaty/cinemana/ca1/Remote98$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Process;)V

    sget-object v10, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v11, 0xa

    invoke-interface {v7, v9, v11, v12, v10}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/16 v10, 0x400

    :try_start_6
    new-array v10, v10, [B

    :cond_1
    :goto_1
    invoke-virtual {v9, v10}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v12

    const/16 v13, 0x2000

    if-ge v12, v13, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v12

    sub-int/2addr v13, v12

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-virtual {v0, v10, v8, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :cond_2
    if-eqz v9, :cond_3

    :try_start_7
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    :cond_3
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    :cond_4
    :try_start_8
    invoke-static {v1, v3, v4}, Lcom/shabakaty/cinemana/ca1/Remote98;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    :goto_2
    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_6
    return-object v2

    :cond_7
    :try_start_9
    const-string v9, "UTF-8"

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "403"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v0, "HTTP403"

    goto :goto_4

    :cond_8
    const-string v9, "404"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v0, "HTTP404"

    goto :goto_4

    :cond_9
    const-string v9, "Protocol not found"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    const-string v0, "protocol"

    goto :goto_4

    :cond_a
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "tls"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_d

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "ssl"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_3

    :cond_b
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "timed out"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "timeout"

    goto :goto_4

    :cond_c
    const-string v0, "decode_or_network"

    goto :goto_4

    :cond_d
    :goto_3
    const-string v0, "TLS"

    :goto_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exit="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " reason="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/shabakaty/cinemana/ca1/Remote98;->event(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    :cond_e
    :try_start_a
    invoke-static {v1, v3, v4}, Lcom/shabakaty/cinemana/ca1/Remote98;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    :goto_5
    if-eqz v7, :cond_f

    invoke-interface {v7}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_f
    if-eqz v5, :cond_13

    goto :goto_a

    :catchall_0
    move-exception v0

    move-object v8, v0

    if-eqz v9, :cond_10

    :try_start_b
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v9, v0

    :try_start_c
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10
    :goto_6
    throw v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v7, v4

    goto :goto_8

    :catchall_4
    move-exception v0

    move-object v6, v4

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object v5, v4

    move-object v6, v5

    :goto_7
    move-object v7, v6

    :goto_8
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/shabakaty/cinemana/ca1/Remote98;->event(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    :cond_11
    :try_start_e
    invoke-static {v1, v3, v4}, Lcom/shabakaty/cinemana/ca1/Remote98;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    goto :goto_9

    :catch_3
    move-exception v0

    :goto_9
    if-eqz v7, :cond_12

    invoke-interface {v7}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_12
    if-eqz v5, :cond_13

    :goto_a
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_13
    return-object v4

    :catchall_6
    move-exception v0

    move-object v2, v0

    if-eqz v6, :cond_14

    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    :cond_14
    :try_start_f
    invoke-static {v1, v3, v4}, Lcom/shabakaty/cinemana/ca1/Remote98;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    goto :goto_b

    :catch_4
    move-exception v0

    :goto_b
    if-eqz v7, :cond_15

    invoke-interface {v7}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_15
    if-eqz v5, :cond_16

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_16
    throw v2
.end method

.method public static frame(Ljava/lang/Object;Ljava/lang/String;J)Landroid/graphics/Bitmap;
    .locals 10

    .line 8
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    const/4 v7, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Remote98;->agent(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v8, Lcom/shabakaty/cinemana/ca1/Remote98;->network:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v9, Lcom/shabakaty/cinemana/ca1/Remote98$$ExternalSyntheticLambda2;

    move-object v0, v9

    move-object v2, p1

    move-wide v3, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/cinemana/ca1/Remote98$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v8, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v7

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x4

    invoke-interface {v7, v1, v2, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    return-object v0

    :catchall_0
    move-exception v0

    const/4 v1, 0x1

    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v7, :cond_0

    invoke-interface {v7, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "preview_remote_reader"

    invoke-static {p0, v1, v0}, Lcom/shabakaty/cinemana/ca1/Remote98;->event(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/shabakaty/cinemana/ca1/Remote98;->ffmpeg(Ljava/lang/Object;Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$ffmpeg$2(Ljava/lang/Process;)V
    .locals 0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V

    return-void
.end method

.method static synthetic lambda$frame$1(Ljava/lang/String;Ljava/lang/String;JLjava/util/concurrent/atomic/AtomicBoolean;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 8
    new-instance v6, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v6}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "User-Agent"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, p1, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p1, 0x1b

    const-wide/32 v0, 0xf4240

    const-wide/16 v2, 0x3e8

    if-lt p0, p1, :cond_0

    div-long/2addr p2, v2

    mul-long v1, p2, v0

    const/4 v3, 0x3

    const/16 v4, 0xf0

    const/16 v5, 0x87

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    div-long/2addr p2, v2

    mul-long p2, p2, v0

    const/4 p0, 0x3

    invoke-virtual {v6, p2, p3, p0}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    :cond_1
    :try_start_1
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :goto_1
    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_2
    throw p0
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 7
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "CA1-preview-network98"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method static put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
