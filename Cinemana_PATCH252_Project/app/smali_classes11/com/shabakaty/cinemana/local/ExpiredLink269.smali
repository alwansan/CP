.class public final Lcom/shabakaty/cinemana/local/ExpiredLink269;
.super Ljava/lang/Object;
.source "ExpiredLink269.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;
    }
.end annotation


# static fields
.field static final pending:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final worker:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/local/ExpiredLink269;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/local/ExpiredLink269;->pending:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static allowed(Ljava/lang/Object;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "com.shabakaty.cinemana.ca1.Restart108"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "canRetry"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object p1, v1, v5

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static beforeRetry(Ljava/lang/Object;I)Z
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "link_repair269"

    const-string v3, "count_"

    const-string v4, "day_"

    const-string v5, "attempt_"

    const-string v6, "bad_"

    const/4 v7, 0x0

    :try_start_f
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "a"

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/Context;

    invoke-static {v8, v1}, Lcom/shabakaty/cinemana/local/ExpiredLink269;->row(Landroid/content/Context;I)Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;

    move-result-object v9

    if-eqz v9, :cond_15e

    iget-object v10, v9, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->id:Ljava/lang/String;

    if-eqz v10, :cond_15e

    iget-object v10, v9, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->id:Ljava/lang/String;

    const-string v11, "[0-9]{1,20}"

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_15e

    iget-object v10, v9, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->path:Ljava/lang/String;

    if-eqz v10, :cond_15e

    iget-object v10, v9, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->path:Ljava/lang/String;

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    const-string v11, ".mp4"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_49

    goto/16 :goto_15e

    :cond_49
    invoke-virtual {v8, v2, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v10, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iget-object v10, v9, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->url:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {v10, v11, v12}, Lcom/shabakaty/cinemana/local/ExpiredLink269;->expired(Ljava/lang/String;J)Z

    move-result v10

    if-nez v10, :cond_6c

    if-nez v6, :cond_6c

    return v7

    :cond_6c
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/cinemana/local/ExpiredLink269;->running(I)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_74

    return v11

    :cond_74
    invoke-static {v9}, Lcom/shabakaty/cinemana/local/ExpiredLink269;->status(Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x3

    if-nez v6, :cond_95

    new-array v6, v12, [Ljava/lang/String;

    const-string v13, "ERROR"

    aput-object v13, v6, v7

    const-string v13, "RETRY"

    aput-object v13, v6, v11

    const-string v13, "WARN"

    const/4 v14, 0x2

    aput-object v13, v6, v14

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_95

    return v7

    :cond_95
    const-string v6, "COMPLETED"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15d

    const-string v6, "PAUSED"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15d

    invoke-static/range {p0 .. p1}, Lcom/shabakaty/cinemana/local/ExpiredLink269;->allowed(Ljava/lang/Object;I)Z

    move-result v6

    if-nez v6, :cond_ad

    goto/16 :goto_15d

    :cond_ad
    invoke-virtual {v8, v2, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v9, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->id:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v13, 0x0

    invoke-interface {v2, v6, v13, v14}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v14, v12, v15

    const-wide/32 v19, 0x493e0

    cmp-long v10, v14, v19

    if-gez v10, :cond_d3

    return v11

    :cond_d3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v14, v9, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->id:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v15, v9, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->id:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-wide/16 v6, 0x0

    invoke-interface {v2, v14, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long v17, v12, v6

    const-wide/32 v19, 0x5265c00

    cmp-long v14, v17, v19

    if-lez v14, :cond_104

    move-wide v6, v12

    const/4 v10, 0x0

    :cond_104
    const/4 v14, 0x3

    if-lt v10, v14, :cond_108

    return v11

    :cond_108
    sget-object v14, Lcom/shabakaty/cinemana/local/ExpiredLink269;->pending:Ljava/util/Set;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_115

    return v11

    :cond_115
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v9, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->id:Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v9, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->id:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v9, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->id:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/2addr v10, v11

    invoke-interface {v2, v3, v10}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v2, Lcom/shabakaty/cinemana/local/ExpiredLink269;->worker:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/shabakaty/cinemana/local/ExpiredLink269$$ExternalSyntheticLambda0;

    invoke-direct {v3, v8, v0, v1}, Lcom/shabakaty/cinemana/local/ExpiredLink269$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/Object;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_15d} :catch_160

    :cond_15d
    :goto_15d
    return v11

    :cond_15e
    :goto_15e
    const/4 v1, 0x0

    return v1

    :catch_160
    move-exception v0

    const-string v1, "link_guard"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return v1
.end method

.method static cancelled(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 4

    const-string v0, "ca1_delete_intent"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_5b

    const-string p2, "ca1_restart108"

    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "intent:"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, ""

    invoke-interface {p0, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "|PAUSE"

    invoke-virtual {p0, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_31

    goto :goto_5b

    :cond_31
    :try_start_31
    const-string p0, "com.shabakaty.cinemana.ca1.Queue110"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string p2, "isPaused"

    new-array v2, v0, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v1

    invoke-virtual {p0, p2, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_59} :catch_5a

    return p0

    :catch_5a
    return v1

    :cond_5b
    :goto_5b
    return v0
.end method

.method static candidates(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v2, 0x0

    :goto_b
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_6c

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "videoUrl"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/shabakaty/cinemana/local/ExpiredLink269;->safe(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_69

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_69

    invoke-static {v4, p3, p4}, Lcom/shabakaty/cinemana/local/ExpiredLink269;->expired(Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_2e

    goto :goto_69

    :cond_2e
    invoke-static {p1, v4}, Lcom/shabakaty/cinemana/local/ExpiredLink269;->sameMedia(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_69

    :cond_38
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_69

    invoke-static {p2}, Lcom/shabakaty/cinemana/local/ExpiredLink269;->resolution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/shabakaty/cinemana/local/ExpiredLink269;->resolution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_66

    invoke-static {p2}, Lcom/shabakaty/cinemana/local/ExpiredLink269;->resolution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "resolution"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/cinemana/local/ExpiredLink269;->resolution(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    :cond_66
    invoke-virtual {v1, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    :cond_69
    :goto_69
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_6c
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static expired(Ljava/lang/String;J)Z
    .locals 4

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/ExpiredLink269;->expiry(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_16

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    const-wide/16 v2, 0x1e

    add-long/2addr p1, v2

    cmp-long p0, v0, p1

    if-gtz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method static expiry(Ljava/lang/String;)J
    .locals 6

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_37

    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_37

    aget-object v3, p0, v2

    const-string v4, "="

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-ne v4, v5, :cond_34

    aget-object v4, v3, v1

    const-string v5, "Expires"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    const/4 p0, 0x1

    aget-object p0, v3, p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_37

    return-wide v0

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :catch_37
    :cond_37
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static failed(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 5

    const-string v0, "link_rejected task="

    const-string v1, "bad_"

    if-eqz p0, :cond_67

    if-eqz p1, :cond_67

    if-nez p2, :cond_b

    goto :goto_67

    :cond_b
    :try_start_b
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/shabakaty/cinemana/local/ExpiredLink269;->rejected(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1a

    return-void

    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v2, "getId"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {p2, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const-string p2, "link_repair269"

    invoke-virtual {p0, p2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    invoke-interface {p0, p2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_60} :catch_61

    goto :goto_67

    :catch_61
    move-exception p0

    const-string p1, "link_error_trace"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_67
    :goto_67
    return-void
.end method

.method static synthetic lambda$beforeRetry$0(Landroid/content/Context;Ljava/lang/Object;I)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/local/ExpiredLink269;->recover(Landroid/content/Context;Ljava/lang/Object;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_f
    .catchall {:try_start_0 .. :try_end_3} :catchall_d

    :goto_3
    sget-object p0, Lcom/shabakaty/cinemana/local/ExpiredLink269;->pending:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_16

    :catchall_d
    move-exception p0

    goto :goto_17

    :catch_f
    move-exception p0

    :try_start_10
    const-string p1, "link_refresh"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_d

    goto :goto_3

    :goto_16
    return-void

    :goto_17
    sget-object p1, Lcom/shabakaty/cinemana/local/ExpiredLink269;->pending:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    throw p0
.end method

.method static probe(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "link_probe status="

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_4
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_a2
    .catchall {:try_start_4 .. :try_end_f} :catchall_a0

    const/16 v2, 0xbb8

    :try_start_11
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v2, 0xfa0

    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v2, "Range"

    const-string v3, "bytes=0-15"

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Accept-Encoding"

    const-string v3, "identity"

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3d} :catch_9d
    .catchall {:try_start_11 .. :try_end_3d} :catchall_9a

    const/16 v0, 0xc8

    if-eq v2, v0, :cond_4b

    const/16 v0, 0xce

    if-eq v2, v0, :cond_4b

    if-eqz p0, :cond_4a

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4a
    return v1

    :cond_4b
    :try_start_4b
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4f} :catch_9d
    .catchall {:try_start_4b .. :try_end_4f} :catchall_9a

    const/16 v2, 0xc

    :try_start_51
    new-array v3, v2, [B

    const/4 v4, 0x0

    :goto_54
    if-ge v4, v2, :cond_60

    rsub-int/lit8 v5, v4, 0xc

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-lez v5, :cond_60

    add-int/2addr v4, v5

    goto :goto_54

    :cond_60
    const/16 v2, 0x8

    if-lt v4, v2, :cond_82

    const/4 v2, 0x4

    aget-byte v2, v3, v2

    const/16 v4, 0x66

    if-ne v2, v4, :cond_82

    const/4 v2, 0x5

    aget-byte v2, v3, v2

    const/16 v4, 0x74

    if-ne v2, v4, :cond_82

    const/4 v2, 0x6

    aget-byte v2, v3, v2

    const/16 v4, 0x79

    if-ne v2, v4, :cond_82

    const/4 v2, 0x7

    aget-byte v2, v3, v2
    :try_end_7c
    .catchall {:try_start_51 .. :try_end_7c} :catchall_8e

    const/16 v3, 0x70

    if-ne v2, v3, :cond_82

    const/4 v2, 0x1

    goto :goto_83

    :cond_82
    const/4 v2, 0x0

    :goto_83
    if-eqz v0, :cond_88

    :try_start_85
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_88} :catch_9d
    .catchall {:try_start_85 .. :try_end_88} :catchall_9a

    :cond_88
    if-eqz p0, :cond_8d

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8d
    return v2

    :catchall_8e
    move-exception v2

    if-eqz v0, :cond_99

    :try_start_91
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_95

    goto :goto_99

    :catchall_95
    move-exception v0

    :try_start_96
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_99
    :goto_99
    throw v2
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_9a} :catch_9d
    .catchall {:try_start_96 .. :try_end_9a} :catchall_9a

    :catchall_9a
    move-exception v0

    move-object v2, p0

    goto :goto_ae

    :catch_9d
    move-exception v0

    move-object v2, p0

    goto :goto_a3

    :catchall_a0
    move-exception v0

    goto :goto_ae

    :catch_a2
    move-exception v0

    :goto_a3
    :try_start_a3
    const-string p0, "link_probe"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a8
    .catchall {:try_start_a3 .. :try_end_a8} :catchall_a0

    if-eqz v2, :cond_ad

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_ad
    return v1

    :goto_ae
    if-eqz v2, :cond_b3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b3
    throw v0
.end method

.method static recover(Landroid/content/Context;Ljava/lang/Object;I)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/local/ExpiredLink269;->row(Landroid/content/Context;I)Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;

    move-result-object v4

    if-eqz v4, :cond_31f

    iget-object v0, v4, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->id:Ljava/lang/String;

    const-string v5, "[0-9]{1,20}"

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31f

    invoke-static/range {p1 .. p2}, Lcom/shabakaty/cinemana/local/ExpiredLink269;->allowed(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_31f

    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "link_refresh_begin id="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->id:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " expired="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->url:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/shabakaty/cinemana/local/ExpiredLink269;->expired(Ljava/lang/String;J)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    iget-wide v5, v4, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->progress:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-gtz v0, :cond_30c

    new-instance v0, Ljava/io/File;

    iget-object v5, v4, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->path:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v0, v5, v7

    if-gtz v0, :cond_30c

    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".temp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v0, v5, v7

    if-lez v0, :cond_7c

    goto/16 :goto_30c

    :cond_7c
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_83
    const/4 v0, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ge v10, v6, :cond_d8

    aget-object v13, v5, v10

    :try_start_8a
    invoke-virtual {v1, v13}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const-string v13, "SELECT qualityName FROM CinemanaDownloadItem WHERE id=? AND downloadTaskId=?"

    new-array v0, v0, [Ljava/lang/String;

    iget-object v14, v4, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->id:Ljava/lang/String;

    aput-object v14, v0, v9

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v0, v12

    invoke-virtual {v11, v13, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12
    :try_end_a8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8a .. :try_end_a8} :catch_cf
    .catchall {:try_start_8a .. :try_end_a8} :catchall_c8

    :try_start_a8
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-interface {v12, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_b7

    const-string v0, ""

    goto :goto_bb

    :cond_b7
    invoke-interface {v12, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_bb
    iput-object v0, v4, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->quality:Ljava/lang/String;
    :try_end_bd
    .catchall {:try_start_a8 .. :try_end_bd} :catchall_c3

    :cond_bd
    :try_start_bd
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    if-eqz v11, :cond_d5

    goto :goto_d2

    :catchall_c3
    move-exception v0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_c8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_bd .. :try_end_c8} :catch_cf
    .catchall {:try_start_bd .. :try_end_c8} :catchall_c8

    :catchall_c8
    move-exception v0

    if-eqz v11, :cond_ce

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_ce
    throw v0

    :catch_cf
    nop

    if-eqz v11, :cond_d5

    :goto_d2
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_d5
    add-int/lit8 v10, v10, 0x1

    goto :goto_83

    :cond_d8
    new-instance v5, Lorg/json/JSONArray;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "transcoddedFiles/id/"

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v4, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->id:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "?ca1_refresh="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/high16 v10, 0x100000

    invoke-static {v6, v10}, Lcom/shabakaty/cinemana/local/Metadata269;->get(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->url:Ljava/lang/String;

    iget-object v10, v4, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->quality:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {v5, v6, v10, v13, v14}, Lcom/shabakaty/cinemana/local/ExpiredLink269;->candidates(Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;J)Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "link_candidates id="

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v4, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->id:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " count="

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_12f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v13, 0x3

    if-eqz v10, :cond_14a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    add-int/lit8 v14, v6, 0x1

    if-lt v6, v13, :cond_141

    goto :goto_14a

    :cond_141
    invoke-static {v10}, Lcom/shabakaty/cinemana/local/ExpiredLink269;->probe(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_148

    goto :goto_14b

    :cond_148
    move v6, v14

    goto :goto_12f

    :cond_14a
    :goto_14a
    move-object v10, v11

    :goto_14b
    if-nez v10, :cond_161

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "link_refresh_no_verified_candidate id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v4, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    return-void

    :cond_161
    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/local/ExpiredLink269;->row(Landroid/content/Context;I)Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;

    move-result-object v5

    if-eqz v5, :cond_30b

    iget-object v6, v5, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->url:Ljava/lang/String;

    iget-object v14, v4, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->url:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30b

    iget-wide v5, v5, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->progress:J

    cmp-long v14, v5, v7

    if-gtz v14, :cond_30b

    invoke-static/range {p2 .. p2}, Lcom/shabakaty/cinemana/local/ExpiredLink269;->running(I)Z

    move-result v5

    if-nez v5, :cond_30b

    invoke-static/range {p1 .. p2}, Lcom/shabakaty/cinemana/local/ExpiredLink269;->allowed(Ljava/lang/Object;I)Z

    move-result v5

    if-nez v5, :cond_185

    goto/16 :goto_30b

    :cond_185
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x6

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v9

    aput-object v8, v7, v12

    aput-object v8, v7, v0

    aput-object v8, v7, v13

    const/4 v14, 0x4

    aput-object v8, v7, v14

    const-class v8, Ljava/lang/Integer;

    const/4 v15, 0x5

    aput-object v8, v7, v15

    const-string v8, "m"

    invoke-virtual {v5, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iget-object v7, v4, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->path:Ljava/lang/String;

    iget-object v8, v4, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->title:Ljava/lang/String;

    iget-object v11, v4, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->image:Ljava/lang/String;

    iget-object v15, v4, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->id:Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v10, v6, v9

    aput-object v7, v6, v12

    aput-object v8, v6, v0

    aput-object v11, v6, v13

    aput-object v15, v6, v14

    const/4 v7, 0x5

    const/4 v8, 0x0

    aput-object v8, v6, v7

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "a"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getId"

    new-array v11, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-eqz v6, :cond_303

    if-eq v6, v3, :cond_303

    iget-object v7, v4, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->database:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    :try_start_1f9
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "task_id"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v11, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "url"

    invoke-virtual {v8, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "Downloads"

    const-string v14, "task_id=? AND external_id=? AND url=? AND progress_bytes=0"

    new-array v13, v13, [Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v9

    iget-object v15, v4, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->id:Ljava/lang/String;

    aput-object v15, v13, v12

    iget-object v15, v4, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->url:Ljava/lang/String;

    aput-object v15, v13, v0

    invoke-virtual {v7, v11, v8, v14, v13}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8
    :try_end_224
    .catchall {:try_start_1f9 .. :try_end_224} :catchall_2fe

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    if-eq v8, v12, :cond_22a

    return-void

    :cond_22a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v11, 0x0

    :goto_230
    if-ge v11, v8, :cond_283

    aget-object v13, v7, v11

    :try_start_234
    invoke-virtual {v1, v13}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14, v9}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13
    :try_end_241
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_234 .. :try_end_241} :catch_276
    .catchall {:try_start_234 .. :try_end_241} :catchall_26e

    :try_start_241
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    const-string v14, "downloadTaskId"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v15, v14, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v12, "CinemanaDownloadItem"

    const-string v14, "id=? AND downloadTaskId=?"

    new-array v9, v0, [Ljava/lang/String;

    iget-object v0, v4, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->id:Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v0, v9, v17

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v16, 0x1

    aput-object v0, v9, v16

    invoke-virtual {v13, v12, v15, v14, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_266
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_241 .. :try_end_266} :catch_26c
    .catchall {:try_start_241 .. :try_end_266} :catchall_269

    if-eqz v13, :cond_27d

    goto :goto_27a

    :catchall_269
    move-exception v0

    move-object v11, v13

    goto :goto_270

    :catch_26c
    nop

    goto :goto_278

    :catchall_26e
    move-exception v0

    const/4 v11, 0x0

    :goto_270
    if-eqz v11, :cond_275

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_275
    throw v0

    :catch_276
    nop

    const/4 v13, 0x0

    :goto_278
    if-eqz v13, :cond_27d

    :goto_27a
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_27d
    add-int/lit8 v11, v11, 0x1

    const/4 v0, 0x2

    const/4 v9, 0x0

    const/4 v12, 0x1

    goto :goto_230

    :cond_283
    iget-object v0, v4, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->id:Ljava/lang/String;

    invoke-static {v1, v3, v0}, Lcom/shabakaty/cinemana/local/ExpiredLink269;->cancelled(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2ea

    invoke-static {v2, v6}, Lcom/shabakaty/cinemana/local/ExpiredLink269;->allowed(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_292

    goto :goto_2ea

    :cond_292
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x1

    aput-object v1, v8, v11

    const-string v1, "q"

    invoke-virtual {v0, v1, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v9

    aput-object v1, v7, v11

    invoke-virtual {v0, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "link_refresh_queued id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v4, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " old_task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " new_task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " same_media="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v4, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->url:Ljava/lang/String;

    invoke-static {v1, v10}, Lcom/shabakaty/cinemana/local/ExpiredLink269;->sameMedia(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    return-void

    :cond_2ea
    :goto_2ea
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "link_refresh_cancelled id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v4, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    return-void

    :catchall_2fe
    move-exception v0

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v0

    :cond_303
    new-instance v0, Ljava/io/IOException;

    const-string v1, "task identity did not change"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30b
    :goto_30b
    return-void

    :cond_30c
    :goto_30c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "link_refresh_wait_partial id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v4, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    :cond_31f
    :goto_31f
    return-void
.end method

.method static rejected(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_c

    const-string v0, "(?is).*(?:code(?: error)?[:= ]+|HTTP[ /]*)(401|403|404)(?:\\D.*|$)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method static resolution(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p0, :cond_5

    goto :goto_11

    :cond_5
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_11
    return-object v0
.end method

.method static row(Landroid/content/Context;I)Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    const/4 v4, 0x0

    if-ge v3, v1, :cond_c9

    aget-object v5, v0, v3

    const-string v6, "-wal"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c5

    const-string v6, "-shm"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c5

    const-string v6, "-journal"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    goto/16 :goto_c5

    :cond_26
    :try_start_26
    invoke-virtual {p0, v5}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v6, "SELECT * FROM Downloads WHERE task_id=?"

    new-array v7, v7, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_41
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_26 .. :try_end_41} :catch_bf
    .catchall {:try_start_26 .. :try_end_41} :catchall_b8

    :try_start_41
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_ad

    new-instance v7, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;

    invoke-direct {v7}, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;-><init>()V

    iput-object v5, v7, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->database:Ljava/lang/String;

    iput p1, v7, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->task:I

    const-string v5, "external_id"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->id:Ljava/lang/String;

    const-string v5, "url"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->url:Ljava/lang/String;

    const-string v5, "path"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->path:Ljava/lang/String;

    const-string v5, "title"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->title:Ljava/lang/String;

    const-string v5, "img"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->image:Ljava/lang/String;

    const-string v5, "progress_bytes"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v7, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->progress:J

    const-string v5, "status"

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->status:Ljava/lang/String;
    :try_end_a4
    .catchall {:try_start_41 .. :try_end_a4} :catchall_b3

    :try_start_a4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_a7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a4 .. :try_end_a7} :catch_bf
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_b8

    if-eqz v4, :cond_ac

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_ac
    return-object v7

    :cond_ad
    :try_start_ad
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    if-eqz v4, :cond_c5

    goto :goto_c2

    :catchall_b3
    move-exception v5

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v5
    :try_end_b8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ad .. :try_end_b8} :catch_bf
    .catchall {:try_start_ad .. :try_end_b8} :catchall_b8

    :catchall_b8
    move-exception p0

    if-eqz v4, :cond_be

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_be
    throw p0

    :catch_bf
    nop

    if-eqz v4, :cond_c5

    :goto_c2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_c5
    :goto_c5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    :cond_c9
    return-object v4
.end method

.method static running(I)Z
    .locals 7

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.liulishuo.filedownloader.FileDownloadList"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getImpl"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "get"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_32

    return v0

    :cond_32
    const-string v1, "com.liulishuo.filedownloader.BaseDownloadTask$IRunningTask"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getOrigin"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "com.liulishuo.filedownloader.BaseDownloadTask"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isRunning"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_60} :catch_61

    return p0

    :catch_61
    return v0
.end method

.method static safe(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p0

    const-string v2, "https"

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    if-eqz p0, :cond_39

    const-string v1, "shabakaty.cc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, ".shabakaty.cc"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, "shabakaty.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, ".shabakaty.com"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_36} :catch_39

    if-eqz p0, :cond_39

    :cond_38
    const/4 v0, 0x1

    :catch_39
    :cond_39
    return v0
.end method

.method static sameMedia(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/net/URI;

    invoke-direct {p0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2e

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2e

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_2e

    if-eqz p0, :cond_2e

    const/4 v0, 0x1

    :catch_2e
    :cond_2e
    return v0
.end method

.method static status(Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;)Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "com.shabakaty.downloader.xc4"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_34

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/shabakaty/cinemana/local/ExpiredLink269$Row;->status:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    check-cast v3, Ljava/lang/Enum;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_30} :catch_34

    return-object p0

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :catch_34
    :cond_34
    const-string p0, "UNKNOWN"

    return-object p0
.end method
