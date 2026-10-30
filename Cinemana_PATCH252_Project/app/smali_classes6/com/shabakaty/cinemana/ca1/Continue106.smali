.class public final Lcom/shabakaty/cinemana/ca1/Continue106;
.super Ljava/lang/Object;
.source "Continue106.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/ca1/Continue106$Entry;,
        Lcom/shabakaty/cinemana/ca1/Continue106$Session;
    }
.end annotation


# static fields
.field static final MODEL:Ljava/lang/String; = "com.shabakaty.cinemana.domain.models.local.VideoModel"

.field static final RAIL:Ljava/lang/String; = "-106106"

.field static final TITLE:Ljava/lang/String; = "\u0623\u0643\u0645\u0644 \u0627\u0644\u0645\u0634\u0627\u0647\u062f\u0629"

.field static final entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/shabakaty/cinemana/ca1/Continue106$Entry;",
            ">;"
        }
    .end annotation
.end field

.field static final heights:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static home:Ljava/lang/ref/WeakReference;
# Only weakly identify the last adapter; never retain the Fragment or its View.
.field private static lastRefreshAdapter:Ljava/lang/ref/WeakReference;
.field private static lastRefreshStamp:J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static preferences:Ljava/lang/Object;

.field static final sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/cinemana/ca1/Continue106$Session;",
            ">;"
        }
    .end annotation
.end field

.field static final visibility:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final writer:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Continue106;->sessions:Ljava/util/Map;

    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Continue106;->entries:Ljava/util/Map;

    .line 12
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Continue106;->heights:Ljava/util/Map;

    .line 13
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Continue106;->home:Ljava/lang/ref/WeakReference;

    .line 14
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Continue106;->visibility:Ljava/util/Map;

    .line 15
    new-instance v0, Lcom/shabakaty/cinemana/ca1/Continue106$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/ca1/Continue106$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Continue106;->writer:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static app()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    const-string v0, "com.shabakaty.cinemana.ca1.Enhancements"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "app"

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static box(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 24
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    const-class p0, Ljava/lang/Integer;

    return-object p0

    :cond_0
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    const-class p0, Ljava/lang/Long;

    return-object p0

    :cond_1
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2

    const-class p0, Ljava/lang/Boolean;

    return-object p0

    :cond_2
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3

    const-class p0, Ljava/lang/Float;

    :cond_3
    return-object p0
.end method

.method static varargs call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 27
    :goto_0
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_8

    # PATCH299: same declared methods, cached for repeat Home card callbacks.
    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/MethodCache299;->declaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_7

    aget-object v7, v3, v6

    .line 28
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    array-length v8, v8

    array-length v9, p2

    if-eq v8, v9, :cond_1

    goto :goto_6

    .line 29
    :cond_1
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 30
    const/4 v9, 0x0

    :goto_3
    array-length v10, p2

    const/4 v11, 0x1

    if-ge v9, v10, :cond_4

    aget-object v10, p2, v9

    if-nez v10, :cond_2

    aget-object v10, v8, v9

    invoke-virtual {v10}, Ljava/lang/Class;->isPrimitive()Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_4

    :cond_2
    aget-object v10, v8, v9

    invoke-static {v10}, Lcom/shabakaty/cinemana/ca1/Continue106;->box(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v10

    aget-object v12, p2, v9

    invoke-virtual {v10, v12}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    :goto_4
    const/4 v8, 0x0

    goto :goto_5

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v8, 0x1

    .line 31
    :goto_5
    if-eqz v8, :cond_6

    invoke-virtual {v7, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    if-eqz v0, :cond_5

    const/4 p0, 0x0

    :cond_5
    invoke-virtual {v7, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 27
    :cond_6
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_1

    .line 32
    :cond_8
    new-instance p0, Ljava/lang/NoSuchMethodException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static card(Ljava/lang/Object;)V
    .locals 4

    .line 156
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const-string v1, "v"

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "post"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Lcom/shabakaty/cinemana/ca1/Continue106$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Lcom/shabakaty/cinemana/ca1/Continue106$$ExternalSyntheticLambda3;-><init>(Ljava/lang/ref/WeakReference;)V

    const/4 v0, 0x0

    aput-object v3, v2, v0

    invoke-static {p0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "continue_card_post106"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 157
    :goto_0
    return-void
.end method

.method public static declared-synchronized decorate(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/cinemana/ca1/Continue106;

    monitor-enter v0

    .line 124
    if-nez p0, :cond_0

    monitor-exit v0

    return-object p0

    .line 126
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Continue106;->app()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->load(Ljava/lang/Object;)V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Continue106;->pruneLocal()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const-string v5, "-106106"

    const-string v6, "a"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v6, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Continue106;->ordered()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->unpack(Lcom/shabakaty/cinemana/ca1/Continue106$Entry;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_2
    const-string v6, "continue_model_error106"

    invoke-static {v6, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 128
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_4

    monitor-exit v0

    return-object v1

    .line 129
    :cond_4
    :try_start_3
    const-string v3, "com.shabakaty.cinemana.ui.home_fragment.HomeItem$Horizontal$FeaturedMovies"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v4

    const-string v2, "\u0623\u0643\u0645\u0644 \u0627\u0644\u0645\u0634\u0627\u0647\u062f\u0629"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const-string v2, "-106106"

    const/4 v7, 0x2

    aput-object v2, v5, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x3

    aput-object v2, v5, v7

    invoke-static {v3, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 130
    const/4 v3, 0x0

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "HomeItem$Slider"

    invoke-virtual {v5, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    add-int/lit8 v4, v3, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 131
    :cond_6
    :goto_3
    invoke-interface {v1, v4, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object v1

    .line 123
    :catchall_0
    move-exception p0

    goto :goto_4

    .line 132
    :catch_1
    move-exception v1

    :try_start_4
    const-string v2, "continue_home_error106"

    invoke-static {v2, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-object p0

    .line 123
    :goto_4
    monitor-exit v0

    throw p0
.end method

.method public static deleted(Ljava/lang/String;)V
    .locals 6

    .line 92
    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->removeOnly(Ljava/lang/String;)V

    const-string p0, "android.os.Handler"

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "android.os.Looper"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getMainLooper"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "post"

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v2, Lcom/shabakaty/cinemana/ca1/Continue106$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/shabakaty/cinemana/ca1/Continue106$$ExternalSyntheticLambda1;-><init>()V

    aput-object v2, v0, v4

    invoke-static {p0, v1, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "continue_delete_sync109"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public static dismiss(Ljava/lang/String;)V
    .locals 1

    .line 91
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->removeOnly(Ljava/lang/String;)V

    sget-object p0, Lcom/shabakaty/cinemana/ca1/Continue106;->home:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->refresh(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "continue_dismiss_error109"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    instance-of v2, p0, Ljava/lang/Class;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    move-object v2, p0

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/NoSuchFieldException;

    invoke-direct {p0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static itemId(Ljava/lang/Object;I)J
    .locals 6

    .line 138
    :try_start_0
    const-string v0, "\u0623\u0643\u0645\u0644 \u0627\u0644\u0645\u0634\u0627\u0647\u062f\u0629"

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "b"

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getTitle"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "a"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "nb"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-wide p0

    :catch_0
    move-exception v0

    const-wide v0, 0x3ffffffffffe5L

    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_0

    const-wide/16 v4, 0x1f

    mul-long v0, v0, v4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    int-to-long v4, v2

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v0

    :catch_1
    move-exception p0

    :cond_1
    int-to-long p0, p1

    return-wide p0
.end method

.method static synthetic lambda$card$5(Ljava/lang/ref/WeakReference;)V
    .locals 1

    .line 156
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->paint(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "continue_card_error106"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic lambda$deleted$4()V
    .locals 1

    .line 92
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Continue106;->home:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->refresh(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$ordered$3(Lcom/shabakaty/cinemana/ca1/Continue106$Entry;Lcom/shabakaty/cinemana/ca1/Continue106$Entry;)I
    .locals 2

    .line 64
    iget-wide v0, p1, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->t:J

    iget-wide p0, p0, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->t:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$portableReload$2()V
    .locals 1

    .line 62
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Continue106;->home:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->refresh(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$static$0(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    .line 15
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "cw108-save"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/Thread;->setDaemon(Z)V

    return-object v0
.end method

.method static synthetic lambda$write$1(Ljava/lang/Object;)V
    .locals 3

    .line 16
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "commit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "continue_commit_failed108"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Persistence123;->changed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "continue_commit_error108"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method static declared-synchronized load(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/shabakaty/cinemana/ca1/Continue106;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/shabakaty/cinemana/ca1/Continue106;->preferences:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    if-nez p0, :cond_1

    monitor-exit v0

    return-void

    .line 47
    :cond_1
    :try_start_1
    const-string v1, "getSharedPreferences"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ca1_continue106"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {p0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sput-object p0, Lcom/shabakaty/cinemana/ca1/Continue106;->preferences:Ljava/lang/Object;

    .line 48
    const-string v1, "getAll"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    .line 49
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :try_start_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_2

    goto :goto_0

    .line 51
    :cond_2
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    new-instance v3, Ljava/io/StringReader;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v3, v6}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 52
    const-string v3, "1"

    const-string v6, "version"

    invoke-virtual {v2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 53
    :cond_3
    new-instance v3, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;

    invoke-direct {v3}, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->id:Ljava/lang/String;

    const-string v1, "parcel"

    const-string v6, ""

    invoke-virtual {v2, v1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->parcel:Ljava/lang/String;

    const-string v1, "local_path"

    const-string v6, ""

    invoke-virtual {v2, v1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->localPath:Ljava/lang/String;

    .line 54
    const-string v1, "position"

    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->p:J

    const-string v1, "duration"

    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->d:J

    const-string v1, "updated"

    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v3, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->t:J

    .line 55
    iget-object v1, v3, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->localPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_4

    :try_start_3
    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->unpack(Lcom/shabakaty/cinemana/ca1/Continue106$Entry;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->localPath(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->localPath:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 56
    :cond_4
    :goto_1
    :try_start_4
    iget-object v1, v3, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->parcel:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-wide v1, v3, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->p:J

    iget-wide v6, v3, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->d:J

    invoke-static {v1, v2, v6, v7}, Lcom/shabakaty/cinemana/ca1/Progress106;->member(JJ)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v3, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->localPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->localPresent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Continue106;->entries:Ljava/util/Map;

    iget-object v2, v3, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->id:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    sget-object v1, Lcom/shabakaty/cinemana/ca1/Continue106;->preferences:Ljava/lang/Object;

    const-string v2, "edit"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v6}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "remove"

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v3, v3, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->id:Ljava/lang/String;

    aput-object v3, v6, v4

    invoke-static {v1, v2, v6}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->write(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 57
    :catch_1
    move-exception v1

    :goto_2
    goto/16 :goto_0

    .line 58
    :cond_6
    monitor-exit v0

    return-void

    .line 45
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static localPath(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 87
    :try_start_0
    const-string v0, "url"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "file:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method static localPresent(Ljava/lang/String;)Z
    .locals 1

    .line 88
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static log(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4

    .line 43
    :try_start_0
    const-string v0, "com.shabakaty.cinemana.ca1.Enhancements"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "log"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const-string p0, "continue watching"

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 p0, 0x2

    aput-object p1, v2, p0

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    return-void
.end method

.method static varargs make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    .line 36
    invoke-virtual {v4}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v6, v5

    array-length v7, p1

    if-eq v6, v7, :cond_0

    goto :goto_4

    .line 37
    :cond_0
    const/4 v6, 0x0

    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_3

    aget-object v7, p1, v6

    if-nez v7, :cond_1

    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/lang/Class;->isPrimitive()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_1
    aget-object v7, v5, v6

    invoke-static {v7}, Lcom/shabakaty/cinemana/ca1/Continue106;->box(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v7

    aget-object v8, p1, v6

    invoke-virtual {v7, v8}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    :goto_2
    const/4 v5, 0x0

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    .line 38
    :goto_3
    if-eqz v5, :cond_4

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 35
    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 39
    :cond_5
    new-instance p1, Ljava/lang/NoSuchMethodException;

    invoke-direct {p1, p0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static metadata(Ljava/lang/Object;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18
    const/4 v0, 0x1

    const-string v1, "setVisibility"

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    sget-object p1, Lcom/shabakaty/cinemana/ca1/Continue106;->visibility:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "getVisibility"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-array p1, v0, [Ljava/lang/Object;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v2

    invoke-static {p0, v1, p1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/shabakaty/cinemana/ca1/Continue106;->visibility:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {p0, v1, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public static nativeTick(Ljava/lang/Object;)V
    .locals 3

    .line 17
    :try_start_0
    const-string v0, "t"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "m0"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->sample(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    return-void
.end method

.method static num(Ljava/lang/Object;Ljava/lang/String;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public static declared-synchronized open(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 10

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/ContinueActions262;->isDetails()Z
    move-result v0
    if-eqz v0, :continue_normal_open262
    const/4 v0, 0x0
    return v0
    :continue_normal_open262
    const-class v0, Lcom/shabakaty/cinemana/ca1/Continue106;

    monitor-enter v0

    .line 144
    const/4 v1, 0x1

    :try_start_0
    const-string v2, "\u0623\u0643\u0645\u0644 \u0627\u0644\u0645\u0634\u0627\u0647\u062f\u0629"

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getTitle"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v0

    return v4

    .line 145
    :cond_0
    :try_start_1
    const-string v2, "getContext"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->load(Ljava/lang/Object;)V

    const-string v2, "nb"

    invoke-static {p1, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lcom/shabakaty/cinemana/ca1/Continue106;->entries:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    monitor-exit v0

    return v1

    .line 146
    :cond_1
    :try_start_2
    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->unpack(Lcom/shabakaty/cinemana/ca1/Continue106$Entry;)Ljava/lang/Object;

    move-result-object v3

    .line 148
    const-string v5, "android.content.Intent"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    aput-object p0, v7, v4

    const-string v8, "com.shabakaty.cinemana.player.VideoPlayerActivity"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v7, v1

    invoke-static {v5, v7}, Lcom/shabakaty/cinemana/ca1/Continue106;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 149
    const-string v7, "putExtra"

    new-array v8, v6, [Ljava/lang/Object;

    const-string v9, "VideoModelArg"

    aput-object v9, v8, v4

    aput-object v3, v8, v1

    invoke-static {v5, v7, v8}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "putExtra"

    new-array v8, v6, [Ljava/lang/Object;

    const-string v9, "ca1_continue_id106"

    aput-object v9, v8, v4

    aput-object p1, v8, v1

    invoke-static {v5, v7, v8}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "putExtra"

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "ca1_continue_position106"

    aput-object v7, v6, v4

    iget-wide v7, v2, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->p:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v5, p1, v6}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string p1, "com.shabakaty.downloader.ol0"

    const-string v2, "a"

    invoke-static {p0, v3}, Lcom/shabakaty/cinemana/ca1/Episodes107;->cached(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->setStatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    const-string p1, "startActivity"

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v5, v2, v4

    invoke-static {p0, p1, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return v1

    .line 143
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 152
    :catch_0
    move-exception p0

    :try_start_3
    const-string p1, "continue_open_error106"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return v1

    .line 143
    :goto_0
    monitor-exit v0

    throw p0
.end method

.method static ordered()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/ca1/Continue106$Entry;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Continue106;->entries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Lcom/shabakaty/cinemana/ca1/Continue106$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/shabakaty/cinemana/ca1/Continue106$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method static pack(Ljava/lang/Object;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    const-string v0, "recycle"

    const-string v1, "android.os.Parcel"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "obtain"

    invoke-static {v1, v4, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 73
    :try_start_0
    const-string v3, "writeToParcel"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {p0, v3, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "marshall"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    .line 74
    const-string v3, "android.util.Base64"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v5, "encodeToString"

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p0, v6, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v6, v7

    invoke-static {v3, v5, v6}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-object p0

    .line 75
    :catchall_0
    move-exception p0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw p0
.end method

.method static paint(Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    const-string v0, "v"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    # PATCH290: direct parent lookup replaces Class.getDeclaredMethods on every card.
    # The PATCH288 post/lambda method remains byte-for-byte unchanged.
    check-cast v0, Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    const/4 v2, 0x0

    .line 160
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/16 v3, 0xc

    if-ge v1, v3, :cond_1

    instance-of v3, v0, Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;
    if-nez v3, :goto_1

    :cond_0
    # A ViewRootImpl is a ViewParent but not a View; stop at that boundary.
    instance-of v3, v0, Landroid/view/View;
    if-eqz v3, :cond_1
    :try_start_0
    check-cast v0, Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 161
    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const-string v3, "\u0623\u0643\u0645\u0644 \u0627\u0644\u0645\u0634\u0627\u0647\u062f\u0629"

    invoke-static {v3}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;
    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ui/home_fragment/HorizontalScrollVideosView;->getTitle()Ljava/lang/String;
    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Dismiss109;->bind(Ljava/lang/Object;Z)V

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Episodes107;->badge(Ljava/lang/Object;Z)V

    .line 162
    const-string v3, "M"

    const-string v4, "R"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_3
    const/4 v5, 0x2

    if-ge v4, v5, :cond_3

    aget-object v5, v3, v4

    invoke-static {p0, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->metadata(Ljava/lang/Object;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 163
    :cond_3
    if-nez v0, :cond_5

    const-string v0, "S"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Continue106;->heights:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    const-string v3, "getLayoutParams"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "height"

    invoke-static {v3, v4, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "setLayoutParams"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void

    .line 165
    :cond_5
    const-string v0, "N"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "setVisibility"

    new-array v4, v1, [Ljava/lang/Object;

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v0, v3, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const-string v0, "U"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    const-class v3, Lcom/shabakaty/cinemana/ca1/Continue106;

    monitor-enter v3

    :try_start_1
    sget-object v4, Lcom/shabakaty/cinemana/ca1/Continue106;->entries:Ljava/util/Map;

    const-string v6, "nb"

    invoke-static {v0, v6}, Lcom/shabakaty/cinemana/ca1/Continue106;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_7

    return-void

    .line 167
    :cond_7
    const-string v3, "S"
    invoke-static {p0, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    move-result-object p0
    # PATCH293: S is the XML LinearLayout's ProgressBar (f42.S).
    check-cast p0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I
    move-result v3
    if-eqz v3, :perf293_visible
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V
    :perf293_visible

    const/16 v3, 0x64
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I
    move-result v4
    if-eq v4, v3, :perf293_max
    invoke-virtual {p0, v3}, Landroid/widget/ProgressBar;->setMax(I)V
    :perf293_max

    iget-wide v6, v0, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->p:J
    iget-wide v8, v0, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->d:J
    invoke-static {v6, v7, v8, v9}, Lcom/shabakaty/cinemana/ca1/Progress106;->percent(JJ)I
    move-result v3
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I
    move-result v4
    if-eq v4, v3, :perf293_progress
    invoke-virtual {p0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V
    :perf293_progress

    .line 168
    const v3, -0x28e6e0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressTintList()Landroid/content/res/ColorStateList;
    move-result-object v4
    if-eqz v4, :perf293_tint_update
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->isStateful()Z
    move-result v6
    if-nez v6, :perf293_tint_update
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I
    move-result v6
    if-eq v6, v3, :perf293_tint_done
    :perf293_tint_update
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;
    move-result-object v4
    invoke-virtual {p0, v4}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V
    :perf293_tint_done

    .line 169
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    move-result-object v0
    sget-object v3, Lcom/shabakaty/cinemana/ca1/Continue106;->heights:Ljava/util/Map;
    invoke-interface {v3, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    move-result v4
    if-nez v4, :cond_8
    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    invoke-interface {v3, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;
    move-result-object v3
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
    move-result-object v3
    iget v3, v3, Landroid/util/DisplayMetrics;->density:F
    const/high16 v6, 0x40800000    # 4.0f
    mul-float v3, v3, v6
    invoke-static {v3}, Ljava/lang/Math;->round(F)I
    move-result v3
    const/4 v5, 0x2
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I
    move-result v3

    # LinearLayout.LayoutParams owns the gravity field. Skip identical layout.
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;
    iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
    if-ne v4, v3, :perf293_layout_apply
    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
    const/16 v6, 0x10
    if-eq v4, v6, :perf293_layout_done
    :perf293_layout_apply
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
    const/16 v6, 0x10
    iput v6, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :perf293_layout_done

    .line 172
    return-void

    .line 166
    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static pause(Ljava/lang/Object;)V
    .locals 2

    .line 122
    :try_start_0
    const-string v0, "m0"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->sample(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "continue_pause_error106"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method static persist(Lcom/shabakaty/cinemana/ca1/Continue106$Entry;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->id:Ljava/lang/String;
    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->resumeProgress(Ljava/lang/String;)V

    .line 66
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "version"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "parcel"

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->parcel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    const-string v1, "local_path"

    iget-object v2, p0, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->p:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "position"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->d:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "duration"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    iget-wide v1, p0, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->t:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "updated"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->store(Ljava/io/Writer;Ljava/lang/String;)V

    sget-object v0, Lcom/shabakaty/cinemana/ca1/Continue106;->preferences:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "edit"

    invoke-static {v0, v4, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->id:Ljava/lang/String;

    aput-object p0, v3, v2

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v3, v1

    const-string p0, "putString"

    invoke-static {v0, p0, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Continue106;->ordered()Ljava/util/List;

    move-result-object p0

    const/16 v3, 0x3c

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    sget-object v4, Lcom/shabakaty/cinemana/ca1/Continue106;->entries:Ljava/util/Map;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;

    iget-object v5, v5, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->id:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;

    iget-object v5, v5, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->id:Ljava/lang/String;

    aput-object v5, v4, v2

    const-string v5, "remove"

    invoke-static {v0, v5, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->write(Ljava/lang/Object;)V

    .line 70
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->stateChanged()V
    return-void
.end method

.method public static portableReload(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    const-class v0, Lcom/shabakaty/cinemana/ca1/Continue106;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/shabakaty/cinemana/ca1/Continue106;->preferences:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Continue106;->entries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->load(Ljava/lang/Object;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    const-string p0, "android.os.Handler"

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "android.os.Looper"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getMainLooper"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 62
    const-string v1, "post"

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v2, Lcom/shabakaty/cinemana/ca1/Continue106$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/shabakaty/cinemana/ca1/Continue106$$ExternalSyntheticLambda2;-><init>()V

    aput-object v2, v0, v4

    invoke-static {p0, v1, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void

    .line 60
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static pruneLocal()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Continue106;->entries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;

    iget-object v2, v1, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->localPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->localPresent(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/shabakaty/cinemana/ca1/Continue106;->entries:Ljava/util/Map;

    iget-object v3, v1, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->id:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/shabakaty/cinemana/ca1/Continue106;->preferences:Ljava/lang/Object;

    const-string v3, "edit"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->id:Ljava/lang/String;

    aput-object v1, v3, v4

    const-string v1, "remove"

    invoke-static {v2, v1, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->write(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static declared-synchronized refreshStateStamp()J
    .locals 9

    const-class v0, Lcom/shabakaty/cinemana/ca1/Continue106;
    monitor-enter v0

    :try_start_0
    # A 64-bit content revision covering continue-watching ids and progress.
    # The stamp stays in memory and is never written to logs.
    const-wide/16 v1, 0x23

    sget-object v3, Lcom/shabakaty/cinemana/ca1/Continue106;->entries:Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->size()I
    move-result v4
    int-to-long v5, v4
    xor-long/2addr v1, v5

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;
    move-result-object v3
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    move-result-object v3

    const-wide/16 v7, 0x1f

    :stamp_loop
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    move-result v4
    if-eqz v4, :stamp_done

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    move-result-object v4
    check-cast v4, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;

    iget-wide v5, v4, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->p:J
    xor-long/2addr v1, v5
    mul-long/2addr v1, v7

    iget-wide v5, v4, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->d:J
    xor-long/2addr v1, v5
    mul-long/2addr v1, v7

    iget-wide v5, v4, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->t:J
    xor-long/2addr v1, v5
    mul-long/2addr v1, v7

    iget-object v5, v4, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->id:Ljava/lang/String;
    if-eqz v5, :stamp_no_id
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I
    move-result v5
    int-to-long v5, v5
    xor-long/2addr v1, v5
    mul-long/2addr v1, v7

    :stamp_no_id
    iget-object v5, v4, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->localPath:Ljava/lang/String;
    if-eqz v5, :stamp_loop
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I
    move-result v5
    int-to-long v5, v5
    xor-long/2addr v1, v5
    mul-long/2addr v1, v7
    goto :stamp_loop

    :stamp_done
    :try_end_0
    monitor-exit v0
    return-wide v1

    :catchall_0
    move-exception v3
    monitor-exit v0
    throw v3

    .catchall {:try_start_0 .. :try_end_0} :catchall_0
.end method

.method public static refresh(Ljava/lang/Object;)V
    .locals 8

    .line 135
    const-string v0, "c"

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/shabakaty/cinemana/ca1/Continue106;->home:Ljava/lang/ref/WeakReference;

    .line 136
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "requireContext"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->load(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Continue106;->app()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->load(Ljava/lang/Object;)V

    :goto_0
    const-string v2, "x"

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    # Capture the old list before recomputing the continue-watching rail.
    move-object v5, v2

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->decorate(Ljava/util/List;)Ljava/util/List;
    move-result-object v2

    # List equality alone misses playback-position changes; also compare the
    # in-memory content revision of continue entries (position/duration/time).
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Continue106;->refreshStateStamp()J
    move-result-wide v3

    sget-object v6, Lcom/shabakaty/cinemana/ca1/Continue106;->lastRefreshAdapter:Ljava/lang/ref/WeakReference;
    if-eqz v6, :perf_publish

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    move-result-object v6
    if-ne v6, p0, :perf_publish

    sget-wide v6, Lcom/shabakaty/cinemana/ca1/Continue106;->lastRefreshStamp:J
    cmp-long v6, v6, v3
    if-nez v6, :perf_publish

    if-eqz v5, :perf_publish
    invoke-interface {v5, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z
    move-result v6
    if-eqz v6, :perf_publish

    # No new data/progress: don't trigger RecyclerView full layout on resume.
    const/4 v6, 0x0
    invoke-static {v6}, Lcom/shabakaty/cinemana/local/UiPerfDiag;->continueRefreshDecision(Z)V
    goto :goto_1

    :perf_publish
    sput-wide v3, Lcom/shabakaty/cinemana/ca1/Continue106;->lastRefreshStamp:J

    new-instance v3, Ljava/lang/ref/WeakReference;
    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
    sput-object v3, Lcom/shabakaty/cinemana/ca1/Continue106;->lastRefreshAdapter:Ljava/lang/ref/WeakReference;

    invoke-static {p0, v0, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x1
    invoke-static {v3}, Lcom/shabakaty/cinemana/local/UiPerfDiag;->continueRefreshDecision(Z)V

    const-string v0, "notifyDataSetChanged"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    const-string v0, "continue_refresh_error106"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 137
    :goto_1
    return-void
.end method

.method static declared-synchronized removeOnly(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/shabakaty/cinemana/ca1/Continue106;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-object v1, Lcom/shabakaty/cinemana/ca1/Continue106;->preferences:Ljava/lang/Object;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Continue106;->app()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->load(Ljava/lang/Object;)V

    :cond_0
    sget-object v1, Lcom/shabakaty/cinemana/ca1/Continue106;->sessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/cinemana/ca1/Continue106$Session;

    iget-object v4, v2, Lcom/shabakaty/cinemana/ca1/Continue106$Session;->id:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-boolean v3, v2, Lcom/shabakaty/cinemana/ca1/Continue106$Session;->muted:Z

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/shabakaty/cinemana/ca1/Continue106;->entries:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Continue106;->preferences:Ljava/lang/Object;

    if-eqz v1, :cond_3

    const-string v2, "edit"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "remove"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->write(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v0

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->removeProgress(Ljava/lang/String;)V

    return-void

    .line 90
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static requested(Ljava/lang/Object;)Z
    .locals 5

    .line 121
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "getVideoModel"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "nb"

    invoke-static {v1, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getContext"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "getIntent"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "getStringExtra"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ca1_continue_id106"

    aput-object v4, v3, v0

    invoke-static {p0, v2, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    return v0
.end method

.method static restore(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;JLcom/shabakaty/cinemana/ca1/Continue106$Session;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "getContext"

    invoke-static {p0, v2, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "getIntent"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 115
    const/4 v1, 0x1

    .line 117
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 115
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "ca1_continue_id106"

    aput-object v4, v3, v0

    const-string v4, "getStringExtra"

    invoke-static {p0, v4, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "ca1_continue_consumed106"

    aput-object v5, v4, v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v1

    const-string v6, "getBooleanExtra"

    invoke-static {p0, v6, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    new-array p2, v3, [Ljava/lang/Object;

    const-string v4, "ca1_continue_position106"

    aput-object v4, p2, v0

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, p2, v1

    const-string v4, "getLongExtra"

    invoke-static {p0, v4, p2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    .line 117
    new-array p2, v3, [Ljava/lang/Object;

    aput-object v5, p2, v0

    aput-object v2, p2, v1

    const-string v3, "putExtra"

    invoke-static {p0, v3, p2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v8, v9, p3, p4}, Lcom/shabakaty/cinemana/ca1/Progress106;->resume(JJ)J

    move-result-wide p2

    .line 118
    cmp-long p0, p2, v6

    if-gtz p0, :cond_1

    return v0

    .line 119
    :cond_1
    iput-boolean v1, p5, Lcom/shabakaty/cinemana/ca1/Continue106$Session;->restoring:Z

    :try_start_0
    const-string p0, "q"

    new-array p4, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p4, v0

    invoke-static {p1, p0, p4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "z"

    new-array p2, v1, [Ljava/lang/Object;

    aput-object v2, p2, v0

    invoke-static {p1, p0, p2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "continue_resumed106"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p5, Lcom/shabakaty/cinemana/ca1/Continue106$Session;->restoring:Z

    return v1

    :catchall_0
    move-exception p0

    iput-boolean v0, p5, Lcom/shabakaty/cinemana/ca1/Continue106$Session;->restoring:Z

    throw p0

    .line 115
    :cond_2
    :goto_0
    return v0
.end method

.method public static row(Ljava/lang/Object;)V
    .locals 7

    .line 140
    :try_start_0
    const-string v0, "L"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "M"

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "setVisibility"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "\u0623\u0643\u0645\u0644 \u0627\u0644\u0645\u0634\u0627\u0647\u062f\u0629"

    invoke-static {v4}, Lcom/shabakaty/cinemana/ca1/I18n161;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getTitle"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {p0, v5, v6}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v0, v1, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "continue_row_error106"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 141
    :goto_1
    return-void
.end method

.method public static declared-synchronized sample(Ljava/lang/Object;Z)V
    .locals 20

    move-object/from16 v0, p0

    const-class v7, Lcom/shabakaty/cinemana/ca1/Continue106;

    monitor-enter v7

    .line 95
    :try_start_0
    const-string v1, "getContext"

    const/4 v8, 0x0

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->load(Ljava/lang/Object;)V

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Continue106;->preferences:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    monitor-exit v7

    return-void

    .line 96
    :cond_0
    :try_start_1
    const-string v1, "getPlayer"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v1, "getVideoModel"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    const-string v1, "nb"

    invoke-static {v9, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "0"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 97
    :cond_1
    sget-object v1, Lcom/shabakaty/cinemana/ca1/Continue106;->sessions:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/cinemana/ca1/Continue106$Session;

    if-nez v3, :cond_2

    new-instance v3, Lcom/shabakaty/cinemana/ca1/Continue106$Session;

    invoke-direct {v3}, Lcom/shabakaty/cinemana/ca1/Continue106$Session;-><init>()V

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v11, v3

    iget-object v1, v11, Lcom/shabakaty/cinemana/ca1/Continue106$Session;->id:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iput-object v10, v11, Lcom/shabakaty/cinemana/ca1/Continue106$Session;->id:Ljava/lang/String;

    const-wide/16 v3, 0x0

    iput-wide v3, v11, Lcom/shabakaty/cinemana/ca1/Continue106$Session;->last:J

    iput-boolean v8, v11, Lcom/shabakaty/cinemana/ca1/Continue106$Session;->muted:Z

    .line 98
    :cond_3
    iget-boolean v1, v11, Lcom/shabakaty/cinemana/ca1/Continue106$Session;->restoring:Z

    if-nez v1, :cond_11

    iget-boolean v1, v11, Lcom/shabakaty/cinemana/ca1/Continue106$Session;->muted:Z

    if-eqz v1, :cond_4

    goto/16 :goto_1

    .line 99
    :cond_4
    const-string v1, "h"

    invoke-static {v2, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->num(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v12, v3

    const-string v1, "C"

    invoke-static {v2, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->num(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v13

    const-string v1, "X"

    invoke-static {v2, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->num(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v4

    .line 100
    invoke-static {v13, v14, v4, v5}, Lcom/shabakaty/cinemana/ca1/Progress106;->valid(JJ)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_5

    monitor-exit v7

    return-void

    .line 101
    :cond_5
    const/4 v15, 0x3

    if-ne v12, v15, :cond_6

    move-object/from16 v1, p0

    move-object v3, v10

    move-wide/from16 v16, v4

    move-object v6, v11

    :try_start_2
    invoke-static/range {v1 .. v6}, Lcom/shabakaty/cinemana/ca1/Continue106;->restore(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;JLcom/shabakaty/cinemana/ca1/Continue106$Session;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_7

    monitor-exit v7

    return-void

    :cond_6
    move-wide/from16 v16, v4

    .line 102
    :cond_7
    const/4 v1, 0x4

    if-eq v12, v15, :cond_8

    if-eq v12, v1, :cond_8

    monitor-exit v7

    return-void

    .line 103
    :cond_8
    :try_start_3
    const-string v2, "getPlaybackEventsHandler"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "F"

    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_9

    monitor-exit v7

    return-void

    .line 104
    :cond_9
    :try_start_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    if-nez p1, :cond_a

    if-eq v12, v1, :cond_a

    iget-wide v4, v11, Lcom/shabakaty/cinemana/ca1/Continue106$Session;->last:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-long v4, v2, v4

    const-wide/16 v18, 0x3e8

    cmp-long v0, v4, v18

    if-gez v0, :cond_a

    monitor-exit v7

    return-void

    :cond_a
    :try_start_5
    iput-wide v2, v11, Lcom/shabakaty/cinemana/ca1/Continue106$Session;->last:J

    .line 105
    const/4 v0, 0x1

    if-ne v12, v1, :cond_b

    const/4 v1, 0x1

    goto :goto_0

    :cond_b
    const/4 v1, 0x0

    :goto_0
    move-wide/from16 v2, v16

    invoke-static {v13, v14, v2, v3, v1}, Lcom/shabakaty/cinemana/ca1/Progress106;->completed(JJZ)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 106
    sget-object v1, Lcom/shabakaty/cinemana/ca1/Continue106;->entries:Ljava/util/Map;

    invoke-interface {v1, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_c

    sget-object v1, Lcom/shabakaty/cinemana/ca1/Continue106;->preferences:Ljava/lang/Object;

    const-string v2, "edit"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "remove"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v10, v0, v8

    invoke-static {v1, v2, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->write(Ljava/lang/Object;)V

    const-string v0, "continue_completed106"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_c
    monitor-exit v7

    return-void

    .line 108
    :cond_d
    :try_start_6
    invoke-static {v13, v14, v2, v3}, Lcom/shabakaty/cinemana/ca1/Progress106;->member(JJ)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v0, :cond_e

    monitor-exit v7

    return-void

    .line 109
    :cond_e
    :try_start_7
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Continue106;->entries:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;

    if-eqz v1, :cond_f

    iget-wide v4, v1, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->p:J

    cmp-long v6, v4, v13

    if-nez v6, :cond_f

    iget-wide v4, v1, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->d:J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    cmp-long v1, v4, v2

    if-nez v1, :cond_f

    monitor-exit v7

    return-void

    .line 110
    :cond_f
    :try_start_8
    new-instance v1, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;

    invoke-direct {v1}, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;-><init>()V

    iput-object v10, v1, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->id:Ljava/lang/String;

    iput-wide v13, v1, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->p:J

    iput-wide v2, v1, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->t:J

    invoke-static {v9}, Lcom/shabakaty/cinemana/ca1/Continue106;->pack(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->parcel:Ljava/lang/String;

    invoke-static {v9}, Lcom/shabakaty/cinemana/ca1/Continue106;->localPath(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->localPath:Ljava/lang/String;

    iget-object v2, v1, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->localPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->localPresent(Ljava/lang/String;)Z

    move-result v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-nez v2, :cond_10

    monitor-exit v7

    return-void

    :cond_10
    :try_start_9
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->persist(Lcom/shabakaty/cinemana/ca1/Continue106$Entry;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 98
    :cond_11
    :goto_1
    monitor-exit v7

    return-void

    .line 96
    :cond_12
    :goto_2
    monitor-exit v7

    return-void

    .line 94
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 111
    :catch_0
    move-exception v0

    :try_start_a
    const-string v1, "continue_save_error106"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_3
    nop

    .line 112
    monitor-exit v7

    return-void

    .line 94
    :goto_4
    monitor-exit v7

    throw v0
.end method

.method static set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static setStatic(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 154
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 41
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static unpack(Lcom/shabakaty/cinemana/ca1/Continue106$Entry;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    const-string v0, "status"

    const-string v1, "recycle"

    const-string v2, "android.util.Base64"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->parcel:Ljava/lang/String;

    const/4 v6, 0x0

    .line 80
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 78
    aput-object v5, v4, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v8, 0x1

    aput-object v5, v4, v8

    const-string v5, "decode"

    invoke-static {v2, v5, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 79
    const-string v4, "android.os.Parcel"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "obtain"

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v9}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 80
    :try_start_0
    const-string v5, "unmarshall"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v2, v9, v6

    aput-object v7, v9, v8

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v9, v3

    invoke-static {v4, v5, v9}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "setDataPosition"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v7, v3, v6

    invoke-static {v4, v2, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v2, "com.shabakaty.cinemana.domain.models.local.VideoModel"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "CREATOR"

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "createFromParcel"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v4, v5, v6

    invoke-static {v2, v3, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 82
    iget-object v3, p0, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->id:Ljava/lang/String;

    const-string v5, "nb"

    invoke-static {v2, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    invoke-static {v2, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "com.shabakaty.downloader.q25"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "x"

    iget-wide v7, p0, Lcom/shabakaty/cinemana/ca1/Continue106$Entry;->p:J

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v3, v0, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    nop

    .line 85
    new-array p0, v6, [Ljava/lang/Object;

    invoke-static {v4, v1, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-object v2

    .line 82
    :cond_1
    :try_start_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "identity mismatch"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :catchall_0
    move-exception p0

    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {v4, v1, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw p0
.end method

.method static write(Ljava/lang/Object;)V
    .locals 2

    .line 16
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Continue106;->writer:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/shabakaty/cinemana/ca1/Continue106$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/shabakaty/cinemana/ca1/Continue106$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
