.class public final Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;
.super Ljava/lang/Object;
.source "PlayerDiagnosticLog.java"

.field private static final TAG:Ljava/lang/String; = "CinemanaPlayerDiag"

.field private static environmentLogged:Z

.method private constructor <init>()V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method


.method public static declared-synchronized environmentOnce()V
    .locals 2

    sget-boolean v0, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->environmentLogged:Z
    if-nez v0, :environment_done
    const/4 v0, 0x1
    sput-boolean v0, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->environmentLogged:Z

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
    const-string v1, "device_manufacturer"
    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->value(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
    const-string v1, "device_model"
    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->value(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;
    const-string v1, "device_codename"
    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->value(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    const-string v1, "android_release"
    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->value(Ljava/lang/String;Ljava/lang/Object;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    const-string v1, "android_sdk_int"
    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->value(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;
    const-string v1, "device_build_fingerprint"
    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->value(Ljava/lang/String;Ljava/lang/Object;)V

    :environment_done
    return-void
.end method

.method public static declared-synchronized event(Ljava/lang/String;)V
    .locals 12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v3, "uptimeMs="
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v0, " event="
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    sget-object v1, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->TAG:Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
    move-result-object v2
    const-string v3, "Cinemana/work/log"
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    move-result v2
    if-nez v2, :dir_ready
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :dir_ready
    new-instance v2, Ljava/io/File;
    const-string v3, "player_diagnostics.log"
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;
    const/4 v3, 0x1
    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    new-instance v2, Ljava/io/OutputStreamWriter;
    const-string v3, "UTF-8"
    invoke-direct {v2, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    new-instance v3, Ljava/io/BufferedWriter;
    invoke-direct {v3, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "UTC_MS="
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    move-result-wide v4
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v4, " PID="
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/Process;->myPid()I
    move-result v4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    const-string v4, " THREAD="
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v4, " UPTIME_MS="
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
    move-result-wide v4
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    const-string v4, " MESSAGE="
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    return-void

    :catchall_0
    move-exception v0
    const-string v1, "CinemanaPlayerDiag"
    const-string v2, "file_write_failed"
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    return-void
.end method

.method public static value(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v1, "="
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lcom/shabakaty/cinemana/player/PlayerDiagnosticLog;->event(Ljava/lang/String;)V
    return-void
.end method
