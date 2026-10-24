.class public final Lcom/shabakaty/cinemana/ca1/Speed120;
.super Ljava/lang/Object;
.source "Speed120.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/ca1/Speed120$Limited;,
        Lcom/shabakaty/cinemana/ca1/Speed120$Gate;,
        Lcom/shabakaty/cinemana/ca1/Speed120$Request;
    }
.end annotation


# static fields
.field static volatile config:Ljava/io/File;

.field static final gate:Lcom/shabakaty/cinemana/ca1/Speed120$Gate;

.field static lastPoll:J

.field static final settingsWriter:Ljava/util/concurrent/ExecutorService;

.field static units:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lcom/shabakaty/cinemana/ca1/Speed120$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/ca1/Speed120$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Speed120;->settingsWriter:Ljava/util/concurrent/ExecutorService;

    .line 10
    new-instance v0, Lcom/shabakaty/cinemana/ca1/Speed120$Gate;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/ca1/Speed120$Gate;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Speed120;->gate:Lcom/shabakaty/cinemana/ca1/Speed120$Gate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized attach(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/shabakaty/cinemana/ca1/Speed120;

    monitor-enter v0

    .line 15
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Speed120;->resolve(Ljava/lang/Object;)Ljava/io/File;

    move-result-object p0

    sput-object p0, Lcom/shabakaty/cinemana/ca1/Speed120;->config:Ljava/io/File;

    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/shabakaty/cinemana/ca1/Speed120;->lastPoll:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    .line 15
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 9
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "speed120-settings"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method static declared-synchronized poll()I
    .locals 8

    const-class v0, Lcom/shabakaty/cinemana/ca1/Speed120;

    monitor-enter v0

    .line 17
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    sget-wide v3, Lcom/shabakaty/cinemana/ca1/Speed120;->lastPoll:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    sub-long v3, v1, v3

    const-wide/32 v5, 0xee6b280

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    sget v1, Lcom/shabakaty/cinemana/ca1/Speed120;->units:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :cond_0
    :try_start_1
    sput-wide v1, Lcom/shabakaty/cinemana/ca1/Speed120;->lastPoll:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    sget-object v1, Lcom/shabakaty/cinemana/ca1/Speed120;->config:Ljava/io/File;

    if-nez v1, :cond_1

    const-string v1, "com.liulishuo.filedownloader.util.FileDownloadHelper"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getAppContext"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Speed120;->resolve(Ljava/lang/Object;)Ljava/io/File;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/cinemana/ca1/Speed120;->config:Ljava/io/File;

    .line 19
    :cond_1
    sget-object v1, Lcom/shabakaty/cinemana/ca1/Speed120;->config:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Speed120;->config:Ljava/io/File;

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Speed120;->readConfig(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    const/16 v2, 0x64

    if-gt v1, v2, :cond_2

    sput v1, Lcom/shabakaty/cinemana/ca1/Speed120;->units:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 20
    :catch_0
    move-exception v1

    :cond_2
    :goto_0
    :try_start_3
    sget v1, Lcom/shabakaty/cinemana/ca1/Speed120;->units:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return v1

    .line 16
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static readConfig(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    const/16 v0, 0x20

    new-array v0, v0, [B

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result p0

    if-gez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    const/4 v4, 0x0

    invoke-direct {v2, v0, v4, p0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "invalid speed configuration length"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static resolve(Ljava/lang/Object;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getFilesDir"

    invoke-static {p0, v2, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    const-string v1, "download-speed120.cfg"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static save(Ljava/io/File;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    if-ltz p1, :cond_1

    const/16 v0, 0x64

    if-gt p1, v0, :cond_1

    .line 27
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 29
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 30
    return-void

    .line 29
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "atomic speed configuration rename failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :catchall_0
    move-exception p0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    .line 26
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "speed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static wrap(Ljava/io/InputStream;Ljava/lang/Object;I)Ljava/io/InputStream;
    .locals 2

    .line 31
    new-instance v0, Lcom/shabakaty/cinemana/ca1/Speed120$Limited;

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Speed120;->gate:Lcom/shabakaty/cinemana/ca1/Speed120$Gate;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/shabakaty/cinemana/ca1/Speed120$Limited;-><init>(Ljava/io/InputStream;Ljava/lang/Object;ILcom/shabakaty/cinemana/ca1/Speed120$Gate;)V

    return-object v0
.end method
