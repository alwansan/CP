.class public final Lcom/shabakaty/cinemana/ca1/CacheCleaner124;
.super Ljava/lang/Object;
.source "CacheCleaner124.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;
    }
.end annotation


# static fields
.field static final AUTO_INTERVAL:J = 0x1499700L

.field static final AUTO_MIN_AGE:J = 0xdbba0L

.field static final CRASH_AUTO_MIN_AGE:J = 0x5265c00L

.field static final CRASH_MANUAL_MIN_AGE:J = 0x493e0L

.field static final KEY_AUTO:Ljava/lang/String; = "auto"

.field static final KEY_LAST:Ljava/lang/String; = "last_auto"

.field static final LOG_AUTO_MIN_AGE:J = 0xdbba0L

.field static final LOG_MAX_BYTES:J = 0x100000L

.field static final MANUAL_MIN_AGE:J = 0x1d4c0L

.field static final PREF:Ljava/lang/String; = "ca1_cache124"

.field static final PRESSURE_BYTES:J = 0x10000000L

.field static final PRESSURE_MIN_AGE:J = 0x493e0L

.field static final UPDATE_AUTO_MIN_AGE:J = 0x1b7740L

.field static final UPDATE_MANUAL_MIN_AGE:J = 0x1d4c0L

.field static final cleaning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field static volatile context:Ljava/lang/Object;

.field static volatile started:Z

.field static final worker:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->cleaning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addUnique(Ljava/util/List;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .line 321
    if-nez p1, :cond_0

    return-void

    .line 322
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-static {v1, p1}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->same(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 323
    :cond_2
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    return-void
.end method

.method static autoIfDue(Z)V
    .locals 10

    .line 102
    sget-object v0, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->context:Ljava/lang/Object;

    .line 103
    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->enabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->cleaning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 105
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 106
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->totalCache(Ljava/lang/Object;)J

    move-result-wide v3

    .line 107
    const-wide/32 v5, 0x10000000

    const/4 v7, 0x1

    cmp-long v8, v3, v5

    if-ltz v8, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 108
    :goto_0
    if-nez p0, :cond_2

    if-nez v3, :cond_2

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->last(Ljava/lang/Object;)J

    move-result-wide v4

    sub-long v4, v1, v4

    const-wide/32 v8, 0x1499700

    cmp-long v6, v4, v8

    if-gez v6, :cond_2

    return-void

    .line 109
    :cond_2
    invoke-static {v0, v7, v3}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->clean(Ljava/lang/Object;ZZ)Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;

    move-result-object v4

    .line 110
    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->setLast(Ljava/lang/Object;J)V

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AUTO_DONE force="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " pressure="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " before="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-wide v1, v4, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->before:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " after="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-wide v1, v4, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->after:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " freed="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v4}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->freed()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " files="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget v1, v4, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->files:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " skipped="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-wide v1, v4, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->skipped:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " fresco="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-boolean v1, v4, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->fresco:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->trace(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "cache_auto_error124"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 113
    :goto_1
    return-void

    .line 103
    :cond_3
    :goto_2
    return-void
.end method

.method static clean(Ljava/lang/Object;ZZ)Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 175
    sget-object v0, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->cleaning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p0, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;

    invoke-direct {p0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;-><init>()V

    return-object p0

    .line 176
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->cleanLocked(Ljava/lang/Object;ZZ)Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 176
    return-object p0

    .line 177
    :catchall_0
    move-exception p0

    sget-object p1, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->cleaning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw p0
.end method

.method static cleanDisposableDir(Ljava/io/File;JJJLcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;)V
    .locals 12

    .line 264
    move-object/from16 v11, p7

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 265
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p0

    move-wide v4, p1

    move-wide v6, p3

    move-wide/from16 v8, p5

    move-object/from16 v10, p7

    invoke-static/range {v1 .. v10}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->cleanDisposableNode(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JJJLcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    goto :goto_0

    :catch_0
    move-exception v0

    iget-wide v0, v11, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->skipped:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, v11, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->skipped:J

    .line 267
    :goto_0
    return-void

    .line 264
    :cond_1
    :goto_1
    return-void
.end method

.method static cleanDisposableNode(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JJJLcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 270
    move-object/from16 v0, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p9

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    .line 271
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide/16 v3, 0x1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v0, v12, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->skipped:J

    add-long/2addr v0, v3

    iput-wide v0, v12, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->skipped:J

    return-void

    .line 272
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 273
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    .line 274
    if-eqz v13, :cond_1

    array-length v14, v13

    const/4 v1, 0x0

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v14, :cond_1

    aget-object v2, v13, v15

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    invoke-static/range {v1 .. v10}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->cleanDisposableNode(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JJJLcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 275
    :cond_1
    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v1, v1

    if-nez v1, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 276
    :cond_2
    return-void

    .line 278
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 279
    const-string v2, "journal"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, ".lock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, ".lck"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 280
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-gtz v7, :cond_5

    const-wide v1, 0x7fffffffffffffffL

    goto :goto_1

    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    sub-long v1, p3, v1

    .line 281
    :goto_1
    cmp-long v5, v1, p5

    if-gez v5, :cond_6

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long v5, v1, p7

    if-gtz v5, :cond_6

    iget-wide v0, v12, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->skipped:J

    add-long/2addr v0, v3

    iput-wide v0, v12, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->skipped:J

    return-void

    .line 282
    :cond_6
    invoke-static {v0, v12}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->deleteDisposable(Ljava/io/File;Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;)V

    .line 283
    return-void

    .line 279
    :cond_7
    :goto_2
    iget-wide v0, v12, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->skipped:J

    add-long/2addr v0, v3

    iput-wide v0, v12, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->skipped:J

    return-void
.end method

.method static cleanDisposableUserData(Ljava/lang/Object;ZLcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;)V
    .locals 17

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 248
    const-string v0, "getFilesDir"

    move-object/from16 v10, p0

    invoke-static {v10, v0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->file(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 249
    const-wide/16 v13, 0x0

    const-string v7, "log"

    if-eqz v11, :cond_2

    .line 251
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-wide/32 v3, 0xdbba0

    goto :goto_0

    :cond_0
    move-wide v3, v13

    :goto_0
    const-wide/32 v5, 0x100000

    move-wide v1, v8

    move-object v12, v7

    move-object/from16 v7, p2

    invoke-static/range {v0 .. v7}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->cleanDisposableDir(Ljava/io/File;JJJLcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;)V

    .line 253
    new-instance v0, Ljava/io/File;

    const-string v1, ".com.google.firebase.crashlytics"

    invoke-direct {v0, v11, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 254
    if-eqz p1, :cond_1

    const-wide/32 v1, 0x5265c00

    goto :goto_1

    :cond_1
    const-wide/32 v1, 0x493e0

    :goto_1
    move-wide v3, v1

    const-wide v5, 0x7fffffffffffffffL

    .line 253
    move-wide v1, v8

    move-object/from16 v7, p2

    invoke-static/range {v0 .. v7}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->cleanDisposableDir(Ljava/io/File;JJJLcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;)V

    goto :goto_2

    .line 249
    :cond_2
    move-object v12, v7

    .line 256
    :goto_2
    if-eqz p1, :cond_3

    const-wide/32 v0, 0x1b7740

    goto :goto_3

    :cond_3
    const-wide/32 v0, 0x1d4c0

    :goto_3
    move-wide v15, v0

    .line 257
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->externalFilesRoots(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/io/File;

    .line 258
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    const-wide/32 v3, 0xdbba0

    goto :goto_5

    :cond_4
    move-wide v3, v13

    :goto_5
    const-wide/32 v5, 0x100000

    move-wide v1, v8

    move-object/from16 v7, p2

    invoke-static/range {v0 .. v7}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->cleanDisposableDir(Ljava/io/File;JJJLcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;)V

    .line 259
    move-object v0, v11

    move-wide v3, v15

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v5}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->cleanUpdaterArtifacts(Ljava/io/File;JJLcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;)V

    .line 260
    goto :goto_4

    .line 261
    :cond_5
    return-void
.end method

.method static cleanLocked(Ljava/lang/Object;ZZ)Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 181
    new-instance v0, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;-><init>()V

    .line 182
    const-string v1, "BEFORE"

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->traceBreakdown(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->totalManaged(Ljava/lang/Object;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->before:J

    .line 184
    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const-wide/32 v1, 0x493e0

    goto :goto_0

    :cond_0
    const-wide/32 v1, 0xdbba0

    goto :goto_0

    :cond_1
    const-wide/32 v1, 0x1d4c0

    .line 188
    :goto_0
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->clearFresco()Z

    move-result p2

    iput-boolean p2, v0, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->fresco:Z

    .line 189
    const-string p2, "getCacheDir"

    invoke-static {p0, p2}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->file(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 190
    if-eqz p2, :cond_2

    iget-boolean v3, v0, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->fresco:Z

    invoke-static {p2, v1, v2, v0, v3}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->cleanRoot(Ljava/io/File;JLcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;Z)V

    .line 191
    :cond_2
    const-string p2, "getExternalCacheDir"

    invoke-static {p0, p2}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->file(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 192
    const/4 v3, 0x0

    if-eqz p2, :cond_3

    invoke-static {p2, v1, v2, v0, v3}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->cleanRoot(Ljava/io/File;JLcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;Z)V

    .line 194
    :cond_3
    :try_start_0
    const-string v4, "getExternalCacheDirs"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 195
    instance-of v5, v4, [Ljava/lang/Object;

    if-eqz v5, :cond_6

    check-cast v4, [Ljava/lang/Object;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_6

    aget-object v7, v4, v6

    instance-of v8, v7, Ljava/io/File;

    if-eqz v8, :cond_5

    if-eqz p2, :cond_4

    move-object v8, v7

    check-cast v8, Ljava/io/File;

    invoke-static {p2, v8}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->same(Ljava/io/File;Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_5

    :cond_4
    check-cast v7, Ljava/io/File;

    invoke-static {v7, v1, v2, v0, v3}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->cleanRoot(Ljava/io/File;JLcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 196
    :catch_0
    move-exception p2

    :cond_6
    nop

    .line 197
    invoke-static {p0, p1, v0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->cleanDisposableUserData(Ljava/lang/Object;ZLcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;)V

    .line 198
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->totalManaged(Ljava/lang/Object;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->after:J

    .line 199
    const-string p2, "AFTER"

    invoke-static {p0, p2}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->traceBreakdown(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_7

    const-string p1, "AUTO"

    goto :goto_2

    :cond_7
    const-string p1, "MANUAL"

    :goto_2
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " before="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v1, v0, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->before:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " after="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v1, v0, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->after:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " freed="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->freed()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " files="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, v0, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->files:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " user_data_freed="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v1, v0, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->userDataDeleted:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " user_files="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, v0, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->userFiles:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " skipped="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v1, v0, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->skipped:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " fresco="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, v0, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->fresco:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->trace(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    return-object v0
.end method

.method static cleanNode(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JJLcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;Z)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 225
    move-object/from16 v9, p2

    move-object/from16 v10, p7

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v0, v10, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->skipped:J

    add-long/2addr v0, v2

    iput-wide v0, v10, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->skipped:J

    return v4

    .line 227
    :cond_0
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v5, ""

    const/16 v6, 0x2f

    const/4 v11, 0x1

    if-eqz v1, :cond_1

    move-object v0, v5

    goto :goto_0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 228
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_3

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 229
    :goto_2
    const-string v0, "media_cache"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v0, v10, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->skipped:J

    add-long/2addr v0, v2

    iput-wide v0, v10, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->skipped:J

    return v4

    .line 230
    :cond_4
    if-eqz p8, :cond_5

    const-string v0, "image_cache"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-wide v0, v10, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->skipped:J

    add-long/2addr v0, v2

    iput-wide v0, v10, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->skipped:J

    return v4

    .line 231
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 232
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    .line 233
    if-eqz v12, :cond_6

    array-length v13, v12

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_6

    aget-object v1, v12, v14

    move-object v0, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->cleanNode(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JJLcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;Z)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 234
    :cond_6
    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1, p0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_7

    array-length v0, v0

    if-nez v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 235
    :cond_7
    return v11

    .line 237
    :cond_8
    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 238
    const-string v5, "user_subtitle_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-wide v5, v10, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->skipped:J

    add-long/2addr v5, v2

    iput-wide v5, v10, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->skipped:J

    return v4

    :cond_9
    const-string v5, "journal"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, ".lock"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, ".lck"

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_4

    .line 239
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    .line 240
    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_b

    sub-long v5, p3, v5

    cmp-long v0, v5, p5

    if-gez v0, :cond_b

    iget-wide v0, v10, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->skipped:J

    add-long/2addr v0, v2

    iput-wide v0, v10, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->skipped:J

    return v4

    .line 241
    :cond_b
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v5

    .line 242
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-wide v0, v10, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->deleted:J

    add-long/2addr v0, v5

    iput-wide v0, v10, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->deleted:J

    iget v0, v10, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->files:I

    add-int/2addr v0, v11

    iput v0, v10, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->files:I

    return v11

    .line 243
    :cond_c
    iget-wide v0, v10, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->skipped:J

    add-long/2addr v0, v2

    iput-wide v0, v10, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->skipped:J

    return v4

    .line 238
    :cond_d
    :goto_4
    iget-wide v0, v10, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->skipped:J

    add-long/2addr v0, v2

    iput-wide v0, v10, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->skipped:J

    return v4
.end method

.method static cleanRoot(Ljava/io/File;JLcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 219
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p0

    move-wide v6, p1

    move-object v8, p3

    move v9, p4

    invoke-static/range {v1 .. v9}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->cleanNode(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JJLcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;Z)Z

    .line 222
    return-void

    .line 219
    :cond_1
    :goto_0
    return-void
.end method

.method static cleanUpdaterArtifacts(Ljava/io/File;JJLcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;)V
    .locals 8

    .line 286
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 287
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 288
    if-nez p0, :cond_1

    return-void

    .line 289
    :cond_1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    aget-object v2, p0, v1

    .line 290
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    .line 291
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 294
    const-string v4, "application.apk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "application.apk."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "application.apk-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    .line 295
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_4

    const-wide v3, 0x7fffffffffffffffL

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sub-long v3, p1, v3

    .line 296
    :goto_1
    cmp-long v5, v3, p3

    if-gez v5, :cond_5

    iget-wide v2, p5, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->skipped:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p5, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->skipped:J

    goto :goto_2

    .line 297
    :cond_5
    invoke-static {v2, p5}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->deleteDisposable(Ljava/io/File;Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;)V

    .line 289
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :cond_6
    return-void

    .line 286
    :cond_7
    :goto_3
    return-void
.end method

.method static clearFresco()Z
    .locals 4

    .line 211
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.facebook.imagepipeline.core.ImagePipelineFactory"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getInstance"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 212
    const-string v2, "getImagePipeline"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 213
    const-string v2, "clearDiskCaches"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    const/4 v0, 0x1

    return v0

    .line 215
    :catch_0
    move-exception v1

    return v0
.end method

.method static deleteDisposable(Ljava/io/File;Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;)V
    .locals 4

    .line 302
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 303
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-wide v2, p1, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->deleted:J

    add-long/2addr v2, v0

    iput-wide v2, p1, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->deleted:J

    iget-wide v2, p1, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->userDataDeleted:J

    add-long/2addr v2, v0

    iput-wide v2, p1, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->userDataDeleted:J

    iget p0, p1, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->files:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->files:I

    iget p0, p1, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->userFiles:I

    add-int/lit8 p0, p0, 0x1

    iput p0, p1, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->userFiles:I

    goto :goto_0

    .line 304
    :cond_0
    iget-wide v0, p1, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->skipped:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->skipped:J

    .line 305
    :goto_0
    return-void
.end method

.method public static enabled(Ljava/lang/Object;)Z
    .locals 6

    .line 61
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->prefs(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "getBoolean"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "auto"

    aput-object v4, v3, v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 62
    :catch_0
    move-exception p0

    const-string v1, "cache_pref_read_error124"

    invoke-static {v1, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    return v0
.end method

.method static externalFilesRoots(Ljava/lang/Object;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "getExternalFilesDir"

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v1, v5, v2

    invoke-static {p0, v4, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 311
    instance-of v5, v4, Ljava/io/File;

    if-eqz v5, :cond_0

    check-cast v4, Ljava/io/File;

    invoke-static {v0, v4}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->addUnique(Ljava/util/List;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    :catch_0
    move-exception v4

    :cond_0
    :goto_0
    nop

    .line 314
    :try_start_1
    const-string v4, "getExternalFilesDirs"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-static {p0, v4, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 315
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    check-cast p0, [Ljava/lang/Object;

    array-length v1, p0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    instance-of v4, v3, Ljava/io/File;

    if-eqz v4, :cond_1

    check-cast v3, Ljava/io/File;

    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->addUnique(Ljava/util/List;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 316
    :catch_1
    move-exception p0

    :cond_2
    nop

    .line 317
    return-object v0
.end method

.method static file(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 205
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/io/File;

    if-eqz p1, :cond_0

    check-cast p0, Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p0

    :cond_0
    return-object v1

    .line 206
    :catch_0
    move-exception p0

    return-object v1
.end method

.method static format(J)Ljava/lang/String;
    .locals 5

    .line 401
    const-wide/16 v0, 0x400

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " B"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 402
    :cond_0
    const-wide/32 v0, 0x100000

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p0, v0

    if-gez v4, :cond_1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v3, [Ljava/lang/Object;

    long-to-double p0, p0

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    div-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%.1f KB"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 403
    :cond_1
    const-wide/32 v0, 0x40000000

    cmp-long v4, p0, v0

    if-gez v4, :cond_2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v3, [Ljava/lang/Object;

    long-to-double p0, p0

    const-wide/high16 v3, 0x4130000000000000L    # 1048576.0

    div-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%.1f MB"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 404
    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v3, [Ljava/lang/Object;

    long-to-double p0, p0

    const-wide/high16 v3, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%.2f GB"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$manual$6(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;Ljava/lang/Object;Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;)V
    .locals 5

    .line 166
    :try_start_0
    const-string v0, "setEnabled"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p0, v0, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "setText"

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "\u062a\u0646\u0638\u064a\u0641 \u0627\u0644\u0643\u0627\u0634"

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {p1, p0, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 167
    :goto_0
    if-eqz p2, :cond_0

    const-string p0, "\u062a\u0639\u0630\u0631 \u0625\u0643\u0645\u0627\u0644 \u062a\u0646\u0638\u064a\u0641 \u0627\u0644\u0643\u0627\u0634"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->toast(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 168
    :cond_0
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->freed()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-nez p2, :cond_1

    goto :goto_1

    .line 169
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "\u062a\u0645 \u062a\u0646\u0638\u064a\u0641 \u0627\u0644\u0643\u0627\u0634 \u0648\u0627\u0644\u0645\u0644\u0641\u0627\u062a \u0627\u0644\u0645\u0624\u0642\u062a\u0629 \u2014 \u062a\u0645 \u062a\u062d\u0631\u064a\u0631 "

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p4}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;->freed()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->toast(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 168
    :cond_2
    :goto_1
    const-string p0, "\u0627\u0644\u0643\u0627\u0634 \u0646\u0638\u064a\u0641 \u0628\u0627\u0644\u0641\u0639\u0644"

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->toast(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    :goto_2
    return-void
.end method

.method static synthetic lambda$manual$7(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    .line 160
    nop

    .line 161
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v0, v0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->cleanLocked(Ljava/lang/Object;ZZ)Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    sget-object v3, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->cleaning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object v7, v1

    move-object v9, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 162
    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "cache_manual_error124"

    invoke-static {v3, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    sget-object v3, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->cleaning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move-object v9, v1

    move-object v7, v2

    .line 164
    :goto_0
    nop

    .line 165
    new-instance v0, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$$ExternalSyntheticLambda4;

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    move-object v8, p0

    invoke-direct/range {v4 .. v9}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;Ljava/lang/Object;Lcom/shabakaty/cinemana/ca1/CacheCleaner124$Result;)V

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->post(Ljava/lang/Runnable;)V

    .line 171
    return-void

    .line 163
    :goto_1
    sget-object p1, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->cleaning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw p0
.end method

.method static synthetic lambda$profile$5(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 144
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p4

    .line 145
    const-string v0, "onClick"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->manual(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 146
    :cond_0
    const-string p0, "toString"

    invoke-virtual {p4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "CacheCleaner124Click"

    return-object p0

    .line 147
    :cond_1
    const-string p0, "hashCode"

    invoke-virtual {p4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 148
    :cond_2
    const-string p0, "equals"

    invoke-virtual {p4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    aget-object p1, p5, p0

    if-ne p3, p1, :cond_3

    const/4 p0, 0x1

    :cond_3
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 149
    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$setEnabled$1()V
    .locals 1

    .line 73
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->autoIfDue(Z)V

    return-void
.end method

.method static synthetic lambda$settings$4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 124
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    .line 125
    const-string v0, "onCheckedChanged"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aget-object p2, p3, v1

    invoke-virtual {p1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->setEnabled(Ljava/lang/Object;Z)V

    goto :goto_1

    .line 126
    :cond_0
    const-string p0, "toString"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "CacheCleaner124Switch"

    return-object p0

    .line 127
    :cond_1
    const-string p0, "hashCode"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 128
    :cond_2
    const-string p0, "equals"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    aget-object p2, p3, p0

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 129
    :cond_4
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$start$2()V
    .locals 1

    .line 96
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->autoIfDue(Z)V

    return-void
.end method

.method static synthetic lambda$start$3()V
    .locals 1

    .line 98
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->autoIfDue(Z)V

    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "cache-cleaner124"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 40
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 41
    return-object v0
.end method

.method static last(Ljava/lang/Object;)J
    .locals 6

    .line 78
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->prefs(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "getLong"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "last_auto"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 79
    :catch_0
    move-exception p0

    return-wide v0
.end method

.method static manual(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5

    .line 156
    sget-object v0, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->cleaning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "\u062a\u0646\u0638\u064a\u0641 \u0627\u0644\u0643\u0627\u0634 \u062c\u0627\u0631\u064d \u0628\u0627\u0644\u0641\u0639\u0644"

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->toast(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 157
    :cond_0
    :try_start_0
    const-string v0, "setEnabled"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p1, v0, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "setText"

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "\u062c\u0627\u0631\u064a \u062a\u0646\u0638\u064a\u0641 \u0627\u0644\u0643\u0627\u0634\u2026"

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p2, v0, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 159
    sget-object v0, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$$ExternalSyntheticLambda7;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 172
    return-void
.end method

.method static post(Ljava/lang/Runnable;)V
    .locals 7

    .line 388
    :try_start_0
    const-string v0, "android.os.Handler"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "android.os.Looper"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getMainLooper"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 389
    const-string v2, "post"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v5

    invoke-static {v0, v2, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 390
    :catch_0
    move-exception p0

    :goto_0
    nop

    .line 391
    return-void
.end method

.method static prefs(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ca1_cache124"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "getSharedPreferences"

    invoke-static {p0, v1, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static profile(Ljava/lang/Object;)V
    .locals 7

    .line 137
    const-string v0, "findViewWithTag"

    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ca1_cache_manual124"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p0, v0, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 138
    new-array v3, v1, [Ljava/lang/Object;

    const-string v5, "ca1_cache_manual124_title"

    aput-object v5, v3, v4

    invoke-static {p0, v0, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 139
    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    const-string v3, "getContext"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 141
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->start(Ljava/lang/Object;)V

    .line 142
    const-string v3, "android.view.View$OnClickListener"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 143
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Class;

    aput-object v3, v6, v4

    new-instance v3, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v2, v0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v5, v6, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    .line 151
    const-string v0, "setOnClickListener"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {v2, v0, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    goto :goto_1

    .line 139
    :cond_1
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception p0

    const-string v0, "cache_profile_error124"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 153
    :goto_1
    return-void
.end method

.method static same(Ljava/io/File;Ljava/io/File;)Z
    .locals 2

    .line 384
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static setEnabled(Ljava/lang/Object;Z)V
    .locals 6

    .line 67
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->prefs(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "edit"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 68
    const-string v1, "putBoolean"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "auto"

    aput-object v4, v3, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "commit"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AUTO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->trace(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    if-eqz p1, :cond_0

    sget-object p0, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 74
    :cond_0
    goto :goto_0

    .line 69
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "cache preference commit failed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :catch_0
    move-exception p0

    const-string p1, "cache_pref_write_error124"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 75
    :goto_0
    return-void
.end method

.method static setLast(Ljava/lang/Object;J)V
    .locals 4

    .line 84
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->prefs(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "edit"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 85
    const-string v0, "putLong"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "last_auto"

    aput-object v3, v2, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v2, p2

    invoke-static {p0, v0, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string p1, "commit"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "cache_last_write_error124"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 88
    :goto_0
    return-void
.end method

.method public static settings(Ljava/lang/Object;)V
    .locals 6

    .line 117
    :try_start_0
    const-string v0, "findViewWithTag"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "ca1_cache_auto124"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p0, v0, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 118
    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    const-string v2, "getContext"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 120
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->start(Ljava/lang/Object;)V

    .line 121
    const-string v2, "setChecked"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->enabled(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v2, "android.widget.CompoundButton$OnCheckedChangeListener"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 123
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    new-array v5, v1, [Ljava/lang/Class;

    aput-object v2, v5, v4

    new-instance v2, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;)V

    invoke-static {v3, v5, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    .line 131
    const-string v2, "setOnCheckedChangeListener"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-static {v0, v2, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "cache_settings_error124"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 133
    :goto_0
    return-void
.end method

.method static size(Ljava/io/File;Ljava/io/File;)J
    .locals 8

    .line 377
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 378
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    return-wide v0

    .line 379
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p0

    return-wide p0

    .line 380
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_3

    array-length v2, p1

    const/4 v3, 0x0

    move-wide v4, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v6, p1, v3

    invoke-static {p0, v6}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->size(Ljava/io/File;Ljava/io/File;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-wide v0, v4

    :cond_3
    return-wide v0

    .line 381
    :catch_0
    move-exception p0

    return-wide v0
.end method

.method public static declared-synchronized start(Ljava/lang/Object;)V
    .locals 8

    const-class v0, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;

    monitor-enter v0

    .line 91
    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    .line 92
    :cond_0
    :try_start_0
    const-string v1, "getApplicationContext"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->context:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 92
    :catch_0
    move-exception v1

    :try_start_1
    sput-object p0, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->context:Ljava/lang/Object;

    .line 93
    :goto_0
    sget-boolean p0, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->started:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    monitor-exit v0

    return-void

    .line 94
    :cond_1
    const/4 p0, 0x1

    :try_start_2
    sput-boolean p0, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->started:Z

    .line 96
    sget-object p0, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->worker:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$$ExternalSyntheticLambda5;-><init>()V

    const-wide/16 v3, 0x2

    const-wide/16 v5, 0x168

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 97
    sget-object v1, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->context:Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "START auto="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->context:Ljava/lang/Object;

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->enabled(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->trace(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    sget-object v1, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->context:Ljava/lang/Object;

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->enabled(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    :cond_2
    monitor-exit v0

    return-void

    .line 90
    :goto_1
    monitor-exit v0

    throw p0
.end method

.method static toast(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    .line 395
    :try_start_0
    const-string v0, "android.widget.Toast"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "makeText"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v2, p1

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 396
    const-string p1, "show"

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 397
    :catch_0
    move-exception p0

    :goto_0
    nop

    .line 398
    return-void
.end method

.method static totalCache(Ljava/lang/Object;)J
    .locals 7

    .line 365
    nop

    .line 366
    const-string v0, "getCacheDir"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->file(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->size(Ljava/io/File;Ljava/io/File;)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 367
    :cond_0
    const-string v0, "getExternalCacheDir"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->file(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0, v0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->size(Ljava/io/File;Ljava/io/File;)J

    move-result-wide v3

    add-long/2addr v1, v3

    .line 369
    :cond_1
    :try_start_0
    const-string v3, "getExternalCacheDirs"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 370
    instance-of v3, p0, [Ljava/lang/Object;

    if-eqz v3, :cond_4

    check-cast p0, [Ljava/lang/Object;

    array-length v3, p0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, p0, v4

    instance-of v6, v5, Ljava/io/File;

    if-eqz v6, :cond_3

    if-eqz v0, :cond_2

    move-object v6, v5

    check-cast v6, Ljava/io/File;

    invoke-static {v0, v6}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->same(Ljava/io/File;Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    move-object v6, v5

    check-cast v6, Ljava/io/File;

    check-cast v5, Ljava/io/File;

    invoke-static {v6, v5}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->size(Ljava/io/File;Ljava/io/File;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v1, v5

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 371
    :catch_0
    move-exception p0

    :cond_4
    nop

    .line 372
    return-wide v1
.end method

.method static totalManaged(Ljava/lang/Object;)J
    .locals 4

    .line 326
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->totalCache(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->transientSize(Ljava/lang/Object;)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method static trace(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    .line 408
    :try_start_0
    const-string v0, "com.shabakaty.cinemana.features.DownloadTrace"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "log"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CACHE124 "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v2, p1

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 409
    :catch_0
    move-exception p0

    :goto_0
    nop

    .line 410
    return-void
.end method

.method static traceBreakdown(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 19

    .line 347
    move-object/from16 v0, p0

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->totalCache(Ljava/lang/Object;)J

    move-result-wide v1

    .line 348
    const-string v3, "getFilesDir"

    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->file(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    const-string v4, "log"

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_0

    .line 350
    :try_start_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7, v7}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->size(Ljava/io/File;Ljava/io/File;)J

    move-result-wide v7

    .line 351
    new-instance v9, Ljava/io/File;

    const-string v10, ".com.google.firebase.crashlytics"

    invoke-direct {v9, v3, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v9, v9}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->size(Ljava/io/File;Ljava/io/File;)J

    move-result-wide v9

    goto :goto_0

    .line 349
    :cond_0
    move-wide v7, v5

    move-wide v9, v7

    .line 353
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->externalFilesRoots(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v11, v5

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    .line 354
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v13, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v14, v14}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->size(Ljava/io/File;Ljava/io/File;)J

    move-result-wide v14

    add-long/2addr v5, v14

    .line 355
    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    if-eqz v13, :cond_4

    array-length v14, v13

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v14, :cond_4

    aget-object v16, v13, v15

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->isFile()Z

    move-result v17

    if-eqz v17, :cond_2

    .line 356
    move-object/from16 v17, v3

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v4

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 357
    const-string v4, "application.apk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "application.apk."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "application.apk-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v11, v3

    goto :goto_3

    .line 355
    :cond_2
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    :cond_3
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    goto :goto_2

    :cond_4
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    .line 359
    move-object/from16 v3, v17

    move-object/from16 v4, v18

    goto :goto_1

    .line 360
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SCAN126 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cache="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " private_log="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " crash="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " updater="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ext_log="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->trace(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 361
    :catch_0
    move-exception v0

    :goto_4
    nop

    .line 362
    return-void
.end method

.method static transientSize(Ljava/lang/Object;)J
    .locals 9

    .line 329
    nop

    .line 330
    const-string v0, "getFilesDir"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->file(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 331
    const-string v1, "log"

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_0

    .line 332
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->size(Ljava/io/File;Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v4, v2

    .line 333
    new-instance v2, Ljava/io/File;

    const-string v3, ".com.google.firebase.crashlytics"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v6}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->size(Ljava/io/File;Ljava/io/File;)J

    move-result-wide v2

    add-long/2addr v2, v4

    .line 335
    :cond_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->externalFilesRoots(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 336
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4, v4}, Lcom/shabakaty/cinemana/ca1/CacheCleaner124;->size(Ljava/io/File;Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 337
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v4, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget-object v6, v0, v5

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 338
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 339
    const-string v8, "application.apk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "application.apk."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "application.apk-"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 337
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 341
    :cond_3
    goto :goto_0

    .line 342
    :cond_4
    return-wide v2
.end method
