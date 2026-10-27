.class public final Lcom/shabakaty/cinemana/ca1/Queue110;
.super Ljava/lang/Object;
.source "Queue110.java"


# static fields
.field static final PREF:Ljava/lang/String; = "ca1_admission110"

.field static final SCAN_LOCK:Ljava/lang/Object;

.field static bound:J

.field static importing:Z

.field static final live:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static volatile pendingCount:I

.field static final phases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static rescued:J

.field static final retried:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Queue110;->live:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Queue110;->retried:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Queue110;->phases:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Queue110;->SCAN_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static allowed(Ljava/util/Properties;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18
    const-string v0, "external"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "task"

    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_4

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->deleted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->pref()Ljava/lang/Object;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5, v1}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "getString"

    invoke-static {v3, v6, v5}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    const-string v7, "intent"

    if-nez v5, :cond_1

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/Queue110;->decode(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "PAUSE"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v4

    :cond_1
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Restart108;->journalPrefs()Ljava/lang/Object;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "intent:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v6, v1}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RUN"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "|PAUSE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|RUN"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 v4, 0x1

    :cond_4
    :goto_0
    return v4
.end method

.method static bind()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Restart108;->manager:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "b"

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "isServiceConnected"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 34
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v4, Lcom/shabakaty/cinemana/ca1/Queue110;->bound:J

    sub-long v4, v1, v4

    const-wide/16 v6, 0x1388

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    return-void

    :cond_2
    sput-wide v1, Lcom/shabakaty/cinemana/ca1/Queue110;->bound:J

    .line 35
    const-string v1, "android.os.Looper"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getMainLooper"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "android.os.Handler"

    invoke-static {v2, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Lcom/shabakaty/cinemana/ca1/Queue110$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/shabakaty/cinemana/ca1/Queue110$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "post"

    invoke-static {v1, v2, v0}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public static bindingResult(Ljava/lang/Object;Z)V
    .locals 1

    .line 30
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->main(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "QUEUE_BIND_RESULT accepted="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->trace(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "queue_bind_result_error"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static c()Ljava/lang/Object;
    .locals 1

    .line 10
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Restart108;->context:Ljava/lang/Object;

    return-object v0
.end method

.method static varargs call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11
    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/Restart108;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static committed(Ljava/lang/Object;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->pref()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "getString"

    invoke-static {v0, v3, v1}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Queue110;->decode(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    # Retain the original task before later reflection results overwrite p0.
    move-object v2, p0

    const-string v1, "getPath"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v4}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "getUrl"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v6, "getLargeFileTotalBytes"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0, v6, v3}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    const-string p0, "path"

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "url"

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/Restart108;->safe(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 v3, 0x0

    cmp-long p0, v6, v3

    if-lez p0, :cond_1

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long p0, v3, v6

    if-nez p0, :cond_1

    # File-size equality is not enough: reject an MP4 that lacks a readable video stream/moov atom.
    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->probeMp4(Ljava/io/File;)I
    move-result p0
    if-ltz p0, :committed_media_valid
    invoke-static {v5, p1}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->quarantineInvalidMp4(Ljava/io/File;I)Z

    const-string v1, "invalidMediaRetries"
    const-string v3, "0"
    invoke-virtual {v0, v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v3
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v3
    add-int/lit8 v3, v3, 0x1
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    move-result-object v4
    invoke-virtual {v0, v1, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    const/4 v4, 0x3
    if-lt v3, v4, :committed_media_retry
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->pref()Ljava/lang/Object;
    move-result-object v1
    new-instance v3, Ljava/lang/StringBuilder;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    const-string v4, "request:"
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v3
    const/4 v4, 0x0
    invoke-static {v1, v3, v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    const-string v1, "MEDIA_CORRUPT_RETRY_LIMIT"
    invoke-static {p1, v1}, Lcom/shabakaty/cinemana/ca1/Queue110;->phase(ILjava/lang/String;)V
    return-void

    :committed_media_retry
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Queue110;->save(Ljava/util/Properties;)V
    const-string v1, "MEDIA_CORRUPT_REQUEUED"
    invoke-static {p1, v1}, Lcom/shabakaty/cinemana/ca1/Queue110;->phase(ILjava/lang/String;)V
    new-instance p0, Ljava/io/IOException;
    const-string p1, "MP4 validation failed; source quarantined and download queued for retry"
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    throw p0

    :committed_media_valid
    # Preserve the task on the verified branch; the source File in v5 is no longer required.
    move-object v5, v2

    const-string p0, "size"

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->pref()Ljava/lang/Object;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "done:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Queue110;->encode(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->pref()Ljava/lang/Object;

    move-result-object p0

    # Restore the request key prefix after retaining the task in v2.
    const-string v2, "request:"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "DB_COMMIT_ACKNOWLEDGED"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/Queue110;->phase(ILjava/lang/String;)V

    # The durable completion receipt now exists; embedding may safely update its final container size.
    invoke-static {v5, p1}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->scheduleDownloadComplete(Ljava/lang/Object;I)V

    return-void

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "completion receipt identity/length mismatch"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static decode(Ljava/lang/String;)Ljava/util/Properties;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 15
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    return-object v0
.end method

.method static done(Ljava/util/Properties;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->pref()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "done:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "task"

    invoke-virtual {p0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    filled-new-array {v1, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v5, "getString"

    invoke-static {v0, v5, v1}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    return v5

    :cond_0
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Queue110;->decode(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v6, "path"

    invoke-virtual {p0, v6, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v7, "external"

    invoke-virtual {p0, v7, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "url"

    invoke-virtual {p0, v7, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0, v6, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_1

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->probeMp4(Ljava/io/File;)I
    move-result v4
    if-ltz v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-string v1, "size"

    const-string v4, "0"

    invoke-virtual {v0, v1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v0, v6, v0

    if-nez v0, :cond_1

    const/4 v5, 0x1

    :cond_1
    if-nez v5, :cond_2

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->pref()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v5
.end method

.method static encode(Ljava/util/Properties;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->store(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static id(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "getId"

    invoke-static {p0, v1, v0}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method static isPaused(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->pref()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "getString"

    invoke-static {v0, v1, p0}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Queue110;->decode(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object p0

    const-string v0, "intent"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "PAUSE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$bind$0(Ljava/lang/Object;)V
    .locals 4

    .line 35
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "isServiceConnected"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bindService"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "QUEUE_BIND_REQUESTED"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->trace(Ljava/lang/String;)V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Restart108;->service()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "queue_bind_error"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static legacyOwner(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    const-string v0, ""

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    .line 77
    :cond_0
    :try_start_0
    const-string v1, "subtitles"

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    instance-of v1, p0, Ljava/util/List;

    if-nez v1, :cond_1

    return-object v0

    .line 79
    :cond_1
    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v1, v0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "downloadTaskId"

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-ne v3, p2, :cond_5

    .line 80
    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/Queue110;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "file"

    invoke-static {v2, v4}, Lcom/shabakaty/cinemana/ca1/Queue110;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "resolvePath"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 81
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    return-object v0

    :cond_4
    move-object v1, v3

    .line 79
    :cond_5
    goto :goto_0

    .line 83
    :cond_6
    return-object v1

    .line 77
    :catch_0
    move-exception p0

    return-object v0
.end method

.method static migrate()V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    const-string v0, "title"

    const-string v1, "path"

    const-string v2, "intent:"

    sget-boolean v3, Lcom/shabakaty/cinemana/ca1/Queue110;->importing:Z

    if-nez v3, :cond_11

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->pref()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "migration109"

    const-string v5, ""

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "getString"

    invoke-static {v3, v7, v6}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v6, "done"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_b

    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/shabakaty/cinemana/ca1/Queue110;->importing:Z

    .line 104
    const/4 v8, 0x0

    :try_start_0
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/io/File;

    const-string v11, "android.os.Environment"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-string v12, "getExternalStorageDirectory"

    new-array v13, v8, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    const-string v12, "Cinemana/work/log"

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v11, "downloads.log"

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_10

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/32 v12, 0x800000

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    move-object v1, v4

    move-object v2, v6

    goto/16 :goto_a

    .line 106
    :cond_1
    const-string v10, "^([0-9]+) CA1 .*stage=enqueue_dispatch .* id=([0-9]+) "

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    const-string v11, "^([0-9]+) STATE=task_ready taskId=(-?[0-9]+) path=(.*?) tag=.*? url=(https?://\\S+)"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 107
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->c()Ljava/lang/Object;

    move-result-object v12

    const-string v13, "h"

    new-array v14, v8, [Ljava/lang/Object;

    invoke-static {v12, v13, v14}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    new-instance v13, Ljava/io/BufferedReader;

    new-instance v14, Ljava/io/FileReader;

    invoke-direct {v14, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v13, v14}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-wide/16 v14, 0x0

    move-object v9, v5

    move/from16 v16, v8

    :goto_0
    :try_start_1
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-virtual {v10, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v18, v10

    const/4 v10, 0x2

    if-eqz v17, :cond_2

    :try_start_2
    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v10, v18

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v24, v13

    goto/16 :goto_8

    :cond_2
    :try_start_3
    invoke-virtual {v11, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_e

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_e

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    sub-long v19, v19, v14

    const-wide/16 v21, 0x7d0

    cmp-long v8, v19, v21

    if-gtz v8, :cond_e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    sub-long v19, v19, v14

    const-wide/32 v21, 0x240c8400

    cmp-long v8, v19, v21

    if-lez v8, :cond_3

    move-object/from16 v23, v4

    move-object/from16 v21, v6

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v24, v13

    move/from16 v8, v16

    goto/16 :goto_5

    .line 108
    :cond_3
    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_c

    invoke-static {v9}, Lcom/shabakaty/cinemana/ca1/Restart108;->deleted(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    move-object/from16 v23, v4

    move-object/from16 v21, v6

    move-object/from16 v19, v11

    :goto_1
    move-object/from16 v20, v12

    move-object/from16 v24, v13

    :goto_2
    move/from16 v8, v16

    goto/16 :goto_5

    :cond_4
    const-string v10, "readCombinedById"

    move-object/from16 v19, v11

    filled-new-array {v12, v9}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_5

    move-object/from16 v23, v4

    move-object/from16 v21, v6

    goto :goto_1

    :cond_5
    const-string v11, "cinemanaDownloadItem"

    invoke-static {v10, v11}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v20, v12

    const/4 v12, 0x3

    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/shabakaty/cinemana/ca1/Restart108;->token(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v21, "com.shabakaty.cinemana.features.DownloadIdentity"

    move-object/from16 v23, v4

    invoke-static/range {v21 .. v21}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v21, v6

    const-string v6, "contentToken"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v24, v13

    :try_start_4
    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v4, v6, v13}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_2

    .line 109
    :cond_6
    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v9, v8, v6}, Lcom/shabakaty/cinemana/ca1/Queue110;->legacyOwner(Ljava/lang/Object;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    :goto_3
    move/from16 v8, v16

    goto/16 :goto_5

    :cond_7
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->pref()Ljava/lang/Object;

    move-result-object v6

    const/4 v10, 0x2

    new-array v12, v10, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "request:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    aput-object v10, v12, v13

    const/4 v10, 0x1

    aput-object v5, v12, v10

    invoke-static {v6, v7, v12}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_3

    .line 111
    :cond_8
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Restart108;->journalPrefs()Ljava/lang/Object;

    move-result-object v6

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v10, v13

    const/4 v12, 0x1

    aput-object v5, v10, v12

    invoke-static {v6, v7, v10}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v10, "|PAUSE"

    invoke-virtual {v6, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    move/from16 v8, v16

    goto/16 :goto_5

    .line 112
    :cond_9
    invoke-static {v11, v1}, Lcom/shabakaty/cinemana/ca1/Queue110;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    const-string v13, ".mkv"

    invoke-virtual {v10, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v12

    invoke-static {v10, v12, v13}, Lcom/shabakaty/cinemana/ca1/Restart108;->valid(Ljava/io/File;J)Z

    move-result v6

    if-eqz v6, :cond_a

    move/from16 v8, v16

    goto/16 :goto_5

    .line 113
    :cond_a
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    const-string v10, "task"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v10, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v10, "external"

    invoke-virtual {v6, v10, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v10, "intent"

    const-string v12, "RUN"

    invoke-virtual {v6, v10, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v10, "source"

    const-string v12, "validated_legacy111"

    invoke-virtual {v6, v10, v12}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v11, v0}, Lcom/shabakaty/cinemana/ca1/Queue110;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v0, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v10, Ljava/io/File;

    const/4 v11, 0x3

    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x2e

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    const-string v12, "name"

    if-gez v11, :cond_b

    goto :goto_4

    :cond_b
    const/4 v13, 0x0

    invoke-virtual {v10, v13, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    :goto_4
    invoke-virtual {v6, v12, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v10, 0x3

    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v1, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v10, "url"

    const/4 v11, 0x4

    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v10, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "created"

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v3, v10}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/Queue110;->save(Ljava/util/Properties;)V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Restart108;->journalPrefs()Ljava/lang/Object;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "|RUN"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v6, v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move/from16 v8, v16

    add-int/lit8 v16, v8, 0x1

    .line 114
    move-object/from16 v10, v18

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v6, v21

    move-object/from16 v4, v23

    move-object/from16 v13, v24

    const/4 v3, 0x1

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 107
    :catchall_1
    move-exception v0

    goto :goto_7

    .line 108
    :cond_c
    move-object/from16 v23, v4

    move-object/from16 v21, v6

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v24, v13

    :cond_d
    move/from16 v8, v16

    goto :goto_5

    .line 107
    :cond_e
    move-object/from16 v23, v4

    move-object/from16 v21, v6

    move-object/from16 v19, v11

    move-object/from16 v20, v12

    move-object/from16 v24, v13

    move/from16 v8, v16

    :goto_5
    move/from16 v16, v8

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    move-object/from16 v12, v20

    move-object/from16 v6, v21

    move-object/from16 v4, v23

    move-object/from16 v13, v24

    :goto_6
    const/4 v3, 0x1

    const/4 v8, 0x0

    goto/16 :goto_0

    .line 114
    :cond_f
    move-object/from16 v23, v4

    move-object/from16 v21, v6

    move-object/from16 v24, v13

    move/from16 v8, v16

    :try_start_5
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->close()V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->pref()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v2, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QUEUE_MIGRATED_109 count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->trace(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 115
    const/4 v1, 0x0

    sput-boolean v1, Lcom/shabakaty/cinemana/ca1/Queue110;->importing:Z

    .line 116
    return-void

    .line 107
    :catchall_2
    move-exception v0

    move-object/from16 v24, v13

    :goto_7
    move-object v1, v0

    :goto_8
    :try_start_6
    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_7
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw v1

    .line 105
    :cond_10
    move-object v1, v4

    move-object v2, v6

    :goto_a
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->pref()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 115
    const/4 v1, 0x0

    sput-boolean v1, Lcom/shabakaty/cinemana/ca1/Queue110;->importing:Z

    .line 105
    return-void

    .line 115
    :catchall_4
    move-exception v0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/shabakaty/cinemana/ca1/Queue110;->importing:Z

    throw v0

    .line 103
    :cond_11
    :goto_b
    return-void
.end method

.method static owner(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "isRunning"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    const-string p0, "com.liulishuo.filedownloader.FileDownloadList"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v1, "getImpl"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "get"

    invoke-static {p0, v1, p1}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const-string p1, "getOrigin"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static declared-synchronized pause(I)V
    .locals 6

    const-class v0, Lcom/shabakaty/cinemana/ca1/Queue110;

    monitor-enter v0

    .line 29
    :try_start_0
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->pref()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getString"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, ""

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Queue110;->decode(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v1

    const-string v2, "intent"

    const-string v3, "PAUSE"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Queue110;->save(Ljava/util/Properties;)V

    :cond_0
    const-string v1, "USER_PAUSED"

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Queue110;->phase(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 29
    :catch_0
    move-exception p0

    :try_start_1
    const-string v1, "queue_pause_error"

    invoke-static {v1, p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    .line 29
    :goto_1
    monitor-exit v0

    throw p0
.end method

.method static phase(ILjava/lang/String;)V
    .locals 2

    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Queue110;->phases:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QUEUE task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " phase="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->trace(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static pref()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 13
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->c()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ca1_admission110"

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->prefs(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static declared-synchronized quarantineLegacy()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/shabakaty/cinemana/ca1/Queue110;

    monitor-enter v0

    .line 91
    :try_start_0
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->pref()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getAll"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 92
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "request:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 93
    :try_start_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/Queue110;->decode(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v3

    const-string v4, "path"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 96
    const-string v5, "intent"

    invoke-virtual {v3, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    const-string v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 97
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->pref()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Lcom/shabakaty/cinemana/ca1/Restart108;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "task"

    invoke-virtual {v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "LEGACY_SUBTITLE_QUARANTINED"

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/Queue110;->phase(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 99
    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "queue_quarantine_error112"

    invoke-static {v3, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    goto :goto_0

    .line 100
    :cond_2
    monitor-exit v0

    return-void

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized remember(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class p0, Lcom/shabakaty/cinemana/ca1/Queue110;

    monitor-enter p0

    .line 22
    :try_start_0
    const-string v0, "a"

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Queue110;->id(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "INVALID_ID"

    invoke-static {v1, p1}, Lcom/shabakaty/cinemana/ca1/Queue110;->phase(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 23
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    const-string v3, "task"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "external"

    const-string v4, "e"

    invoke-static {p1, v4}, Lcom/shabakaty/cinemana/ca1/Queue110;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "title"

    const-string v4, "d"

    invoke-static {p1, v4}, Lcom/shabakaty/cinemana/ca1/Queue110;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "name"

    const-string v4, "c"

    invoke-static {p1, v4}, Lcom/shabakaty/cinemana/ca1/Queue110;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "url"

    const-string v3, "getUrl"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v5}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "path"

    const-string v3, "getPath"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "created"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string p1, "intent"

    const-string v3, "RUN"

    invoke-virtual {v2, p1, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/Queue110;->done(Ljava/util/Properties;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "ALREADY_DB_COMMITTED"

    invoke-static {v1, p1}, Lcom/shabakaty/cinemana/ca1/Queue110;->phase(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/Queue110;->save(Ljava/util/Properties;)V

    # Persist a media-side recovery seed as soon as the download request is admitted.
    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->seed(Ljava/lang/Object;I)V

    sget-object p1, Lcom/shabakaty/cinemana/ca1/Queue110;->live:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ADMISSION_DURABLE"

    invoke-static {v1, p1}, Lcom/shabakaty/cinemana/ca1/Queue110;->phase(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 24
    monitor-exit p0

    return-void

    .line 21
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static remote(Ljava/lang/Object;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "getStatusIgnoreCompleted"

    invoke-static {p0, v0, p1}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method static replay(Ljava/util/Properties;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Queue110;->allowed(Ljava/util/Properties;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Queue110;->videoIdentity(Ljava/util/Properties;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 46
    const-string v0, "task"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "url"

    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    const-string v3, "e"

    invoke-static {p1, v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "d"

    invoke-static {v3, v4}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 48
    monitor-enter v3

    :try_start_0
    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_2

    const-string v4, "m"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v6

    aput-object v2, v7, v5

    const-string v8, "name"

    const-string v9, ""

    invoke-virtual {p0, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aput-object v8, v7, v9

    const-string v8, "title"

    invoke-virtual {p0, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    aput-object v8, v7, v9

    const-string v8, "external"

    invoke-virtual {p0, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v7, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x5

    aput-object v8, v7, v9

    invoke-static {p1, v4, v7}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v7, "a"

    invoke-static {v4, v7}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/shabakaty/cinemana/ca1/Queue110;->id(Ljava/lang/Object;)I

    move-result v8

    if-ne v8, v0, :cond_1

    const-string v8, "getPath"

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "replay identity mismatch"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    const-string v1, "a"

    invoke-static {v4, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "external"

    invoke-virtual {p0, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "e"

    invoke-static {v4, v3}, Lcom/shabakaty/cinemana/ca1/Queue110;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Queue110;->id(Ljava/lang/Object;)I

    move-result p0

    if-ne p0, v0, :cond_4

    const-string p0, "getPath"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, p0, v3}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 50
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "isRunning"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return-void

    :cond_3
    const-string p0, "q"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, p0, v1}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "PRE_PENDING_REPLAY"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/Queue110;->phase(ILjava/lang/String;)V

    .line 51
    return-void

    .line 49
    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "foreign composer"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 48
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 45
    :cond_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "subtitle cannot replace episode"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static rescue(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    const-string v0, "getLostConnectedHandler"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "mWaitingList"

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    move-object v3, v2

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    if-lez v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/shabakaty/cinemana/ca1/Queue110;->rescued:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3a98

    cmp-long v2, v4, v6

    if-ltz v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "isServiceConnected"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lcom/shabakaty/cinemana/ca1/Queue110;->rescued:J

    const-string p0, "connected"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "QUEUE_NATIVE_WAIT_RESCUE count="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->trace(Ljava/lang/String;)V

    .line 41
    :cond_0
    return-void

    .line 39
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static save(Ljava/util/Properties;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 20
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Queue110;->valid(Ljava/util/Properties;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->pref()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "task"

    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Queue110;->encode(Ljava/util/Properties;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "invalid admission identity"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static scan()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Queue110;->SCAN_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Inputs114;->beginScan()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->scanBody()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Inputs114;->endScan()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Inputs114;->endScan()V

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method static scanBody()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->c()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->main(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    sget-object v1, Lcom/shabakaty/cinemana/ca1/Restart108;->manager:Ljava/lang/Object;

    if-nez v1, :cond_1

    return-void

    .line 56
    :cond_1
    sget-boolean v0, Lcom/shabakaty/cinemana/ca1/Restart108;->populated:Z

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const-string v0, "WAIT_MANAGER_MAP"

    invoke-static {v2, v0}, Lcom/shabakaty/cinemana/ca1/Queue110;->phase(ILjava/lang/String;)V

    return-void

    .line 57
    :cond_2
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->quarantineLegacy()V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->migrate()V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->pref()Ljava/lang/Object;

    move-result-object v0

    const-string v3, "getAll"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v3, "b"

    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/ca1/Restart108;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "isServiceConnected"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 58
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->c()Ljava/lang/Object;

    move-result-object v5

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->c()Ljava/lang/Object;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "getDownloadsDao"

    invoke-static {v6, v5}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v2

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "request:"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 59
    :try_start_0
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Queue110;->decode(Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    const-string v10, "task"

    invoke-virtual {v0, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Queue110;->valid(Ljava/util/Properties;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v0, "INVALID_RECORD"

    :goto_1
    invoke-static {v10, v0}, Lcom/shabakaty/cinemana/ca1/Queue110;->phase(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Queue110;->allowed(Ljava/util/Properties;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v0, "PAUSED_OR_DELETED"

    goto :goto_1

    :cond_5
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Queue110;->done(Ljava/util/Properties;)Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_6

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->pref()Ljava/lang/Object;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9, v12}, Lcom/shabakaty/cinemana/ca1/Restart108;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DB_COMMIT_RECEIPT_RECONCILED"

    goto :goto_1

    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 60
    if-nez v4, :cond_7

    const-string v0, "WAIT_SERVICE_BEFORE_DB"

    invoke-static {v10, v0}, Lcom/shabakaty/cinemana/ca1/Queue110;->phase(ILjava/lang/String;)V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->bind()V

    goto :goto_0

    .line 61
    :cond_7
    sget-object v11, Lcom/shabakaty/cinemana/ca1/Queue110;->live:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11, v10}, Lcom/shabakaty/cinemana/ca1/Queue110;->owner(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NATIVE_OWNED status="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "getStatus"

    new-array v12, v2, [Ljava/lang/Object;

    invoke-static {v11, v9, v12}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/shabakaty/cinemana/ca1/Queue110;->phase(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 62
    :cond_8
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Inputs114;->finalized(Ljava/util/Properties;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->pref()Ljava/lang/Object;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9, v12}, Lcom/shabakaty/cinemana/ca1/Restart108;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PARENT_MKV_ALREADY_COMMITTED"

    invoke-static {v10, v0}, Lcom/shabakaty/cinemana/ca1/Queue110;->phase(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 63
    :cond_9
    # A completed DB row is stale when its tokenized MP4 is absent or FFmpeg cannot demux it.
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Queue110;->videoIdentity(Ljava/util/Properties;)Z
    move-result v11
    if-eqz v11, :cond_9_query_db
    const-string v11, "path"
    invoke-virtual {v0, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v11
    if-eqz v11, :cond_9_query_db
    new-instance v13, Ljava/io/File;
    invoke-direct {v13, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z
    move-result v14
    if-eqz v14, :cond_9_media_retry
    invoke-static {v13}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->probeMp4(Ljava/io/File;)I
    move-result v14
    if-ltz v14, :cond_9_media_corrupt
    goto :cond_9_query_db

    :cond_9_media_corrupt
    invoke-static {v13, v10}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->quarantineInvalidMp4(Ljava/io/File;I)Z
    :cond_9_media_retry
    const-string v14, "MEDIA_CORRUPT_REPLAY"
    invoke-static {v10, v14}, Lcom/shabakaty/cinemana/ca1/Queue110;->phase(ILjava/lang/String;)V
    goto :cond_c

    :cond_9_query_db
    const-string v11, "readDownloadsByTaskId"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v5, v13, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    invoke-static {v11, v13}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 64
    if-eqz v11, :cond_c

    const-string v13, "external"

    invoke-virtual {v0, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v13, "s"

    invoke-static {v11, v13}, Lcom/shabakaty/cinemana/ca1/Queue110;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "FOREIGN_DB_ID"

    invoke-static {v10, v0}, Lcom/shabakaty/cinemana/ca1/Queue110;->phase(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "COMPLETED"

    invoke-static {v11}, Lcom/shabakaty/cinemana/ca1/Restart108;->status(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->pref()Ljava/lang/Object;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9, v12}, Lcom/shabakaty/cinemana/ca1/Restart108;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TRANSFER_DB_COMMITTED"

    goto :goto_2

    :cond_b
    const-string v0, "NATIVE_DB_OWNS_RETRY"

    :goto_2
    invoke-static {v10, v0}, Lcom/shabakaty/cinemana/ca1/Queue110;->phase(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 65
    :cond_c
    invoke-static {v3, v10}, Lcom/shabakaty/cinemana/ca1/Queue110;->remote(Ljava/lang/Object;I)I

    move-result v9

    if-lez v9, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "REMOTE_OWNS status="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/shabakaty/cinemana/ca1/Queue110;->phase(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 66
    :cond_d
    const/4 v11, -0x3

    if-ne v9, v11, :cond_e

    const-string v9, "REMOTE_COMPLETE_RECONCILE_CALLBACK"

    invoke-static {v10, v9}, Lcom/shabakaty/cinemana/ca1/Queue110;->phase(ILjava/lang/String;)V

    .line 67
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-string v9, "created"

    const-string v13, "0"

    invoke-virtual {v0, v9, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    sget-object v9, Lcom/shabakaty/cinemana/ca1/Queue110;->retried:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v9, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Long;

    sub-long v13, v11, v13

    const-wide/16 v16, 0x2710

    cmp-long v13, v13, v16

    if-ltz v13, :cond_3

    if-eqz v15, :cond_f

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    sub-long v13, v11, v13

    const-wide/32 v15, 0xea60

    cmp-long v13, v13, v15

    if-gez v13, :cond_f

    goto/16 :goto_0

    .line 68
    :cond_f
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Queue110;->allowed(Ljava/util/Properties;)Z

    move-result v9

    if-nez v9, :cond_10

    goto/16 :goto_0

    :cond_10
    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Queue110;->replay(Ljava/util/Properties;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "QUEUE_RECORD_ERROR key="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " cause="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/shabakaty/cinemana/ca1/Restart108;->trace(Ljava/lang/String;)V

    const-string v8, "queue_record_error"

    invoke-static {v8, v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 58
    :cond_11
    :goto_3
    goto/16 :goto_0

    .line 70
    :cond_12
    sput v7, Lcom/shabakaty/cinemana/ca1/Queue110;->pendingCount:I

    .line 71
    if-lez v7, :cond_13

    if-eqz v4, :cond_13

    :try_start_1
    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/Queue110;->rescue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v0

    const-string v0, "queue_rescue_error"

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 72
    :cond_13
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QUEUE_SCAN requests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " connected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->trace(Ljava/lang/String;)V

    .line 73
    return-void

    .line 55
    :cond_14
    :goto_5
    return-void
.end method

.method static str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Restart108;->str(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static submitted(Ljava/lang/Object;)Z
    .locals 5

    .line 25
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->c()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Restart108;->main(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Queue110;->id(Ljava/lang/Object;)I

    move-result v1

    const-string v2, "getUrl"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0, v2, v4}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/shabakaty/cinemana/ca1/Queue110;->live:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "NATIVE_SUBMIT"

    invoke-static {v1, p0}, Lcom/shabakaty/cinemana/ca1/Queue110;->phase(ILjava/lang/String;)V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->bind()V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Restart108;->wake()V

    return v0

    :cond_2
    :goto_0
    const-string p0, "REJECT_INVALID_TASK"

    invoke-static {v1, p0}, Lcom/shabakaty/cinemana/ca1/Queue110;->phase(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_3
    :goto_1
    return v0

    :catch_0
    move-exception p0

    const-string v1, "queue_submit_error"

    invoke-static {v1, p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    return v0
.end method

.method public static retryCompletedPath(Ljava/io/File;)Z
    .locals 16
    move-object/from16 v14, p0
    const/4 v0, 0x0
    if-eqz v14, :retry_completed_return
    invoke-virtual {v14}, Ljava/io/File;->isFile()Z
    move-result v1
    if-eqz v1, :retry_completed_return
    invoke-static {v14}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->probeMp4(Ljava/io/File;)I
    move-result v1
    if-ltz v1, :retry_completed_search

    :retry_completed_return
    return v0

    :retry_completed_search
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->pref()Ljava/lang/Object;
    move-result-object v1
    const-string v2, "getAll"
    const/4 v3, 0x0
    new-array v3, v3, [Ljava/lang/Object;
    invoke-static {v1, v2, v3}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    move-result-object v2
    check-cast v2, Ljava/util/Map;
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;
    move-result-object v2
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    move-result-object v2

    :retry_completed_loop
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    move-result v3
    if-eqz v3, :retry_completed_return
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v3
    check-cast v3, Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
    move-result-object v4
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v4
    const-string v5, "done:"
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v5
    if-nez v5, :retry_completed_match_key
    const-string v5, "request:"
    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v5
    if-eqz v5, :retry_completed_next

    :retry_completed_match_key
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
    move-result-object v5
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    move-result-object v5
    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/Queue110;->decode(Ljava/lang/String;)Ljava/util/Properties;
    move-result-object v6
    const-string v7, "path"
    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    move-result-object v8
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v8
    if-eqz v8, :retry_completed_next
    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/Queue110;->videoIdentity(Ljava/util/Properties;)Z
    move-result v8
    if-eqz v8, :retry_completed_next
    const-string v7, "task"
    invoke-virtual {v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v7
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v9
    if-nez v9, :retry_completed_valid_id
    goto :retry_completed_next

    :retry_completed_valid_id
    # The filesystem probe above is definitive before the file is moved aside.
    invoke-static {v14, v9}, Lcom/shabakaty/cinemana/ca1/RecoveryCapsule;->quarantineInvalidMp4(Ljava/io/File;I)Z
    move-result v10
    if-eqz v10, :retry_completed_return

    const-string v10, "invalidMediaRetries"
    const-string v11, "0"
    invoke-virtual {v6, v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v11
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    move-result v11
    add-int/lit8 v11, v11, 0x1
    const/4 v12, 0x3
    if-lt v11, v12, :retry_completed_queue
    # Retry limit: preserve the corrupt backup but remove both stale scheduler keys.
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->pref()Ljava/lang/Object;
    move-result-object v13
    new-instance v14, Ljava/lang/StringBuilder;
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    const-string v15, "request:"
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v14
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v14
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v14
    const/4 v15, 0x0
    invoke-static {v13, v14, v15}, Lcom/shabakaty/cinemana/ca1/Restart108;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    new-instance v14, Ljava/lang/StringBuilder;
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    const-string v15, "done:"
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v14
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v14
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v14
    const/4 v15, 0x0
    invoke-static {v13, v14, v15}, Lcom/shabakaty/cinemana/ca1/Restart108;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    const-string v14, "MEDIA_CORRUPT_RETRY_LIMIT"
    invoke-static {v9, v14}, Lcom/shabakaty/cinemana/ca1/Queue110;->phase(ILjava/lang/String;)V
    return v0

    :retry_completed_queue
    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    move-result-object v11
    invoke-virtual {v6, v10, v11}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/Queue110;->save(Ljava/util/Properties;)V
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->pref()Ljava/lang/Object;
    move-result-object v13
    new-instance v14, Ljava/lang/StringBuilder;
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    const-string v15, "done:"
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    move-result-object v14
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    move-result-object v14
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v14
    const/4 v15, 0x0
    invoke-static {v13, v14, v15}, Lcom/shabakaty/cinemana/ca1/Restart108;->put(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    const-string v14, "MEDIA_CORRUPT_REQUEUED"
    invoke-static {v9, v14}, Lcom/shabakaty/cinemana/ca1/Queue110;->phase(ILjava/lang/String;)V
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Restart108;->wake()V
    const/4 v0, 0x1
    return v0

    :retry_completed_next
    goto :retry_completed_loop
.end method

.method public static terminal(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 31
    :try_start_0
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->c()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Restart108;->main(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Queue110;->id(Ljava/lang/Object;)I

    move-result v0

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Queue110;->live:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TERMINAL_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Queue110;->phase(ILjava/lang/String;)V

    const-string v1, "DB_COMMITTED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Queue110;->committed(Ljava/lang/Object;I)V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/StorageMaintenance152;->scanSoon()V

    :cond_1
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Restart108;->wake()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p0

    const-string p1, "queue_terminal_error"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method static valid(Ljava/util/Properties;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 19
    const-string v0, "url"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    const-string v3, "path"

    invoke-virtual {p0, v3, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "task"

    const-string v4, "0"

    invoke-virtual {p0, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "https://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "http://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/Restart108;->safe(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "external"

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static videoIdentity(Ljava/util/Properties;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    const-string v0, "path"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 87
    :cond_0
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Queue110;->c()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "h"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/shabakaty/cinemana/ca1/Queue110;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "external"

    invoke-virtual {p0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "readCombinedById"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/Restart108;->exp(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 88
    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1
.end method
