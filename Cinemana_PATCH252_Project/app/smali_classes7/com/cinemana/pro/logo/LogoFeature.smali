.class public final Lcom/cinemana/pro/logo/LogoFeature;
.super Ljava/lang/Object;
.source "LogoFeature.java"


# static fields
.field private static final IMDB:Ljava/util/regex/Pattern;

.field private static final IO:Ljava/util/concurrent/ExecutorService;

.field private static final LOGO:Ljava/util/regex/Pattern;

.field private static final ORIGIN:Ljava/lang/String; = "https://v3-cinemeta.strem.io"

.field private static final activityObservers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile app:Ljava/lang/Object;

.field private static final bound:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile lifecycleCallback:Ljava/lang/Object;

.field private static final methods:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final observers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final originalPadding:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final repositionAt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final started:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final views:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-string v0, "tt[0-9]{5,12}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/cinemana/pro/logo/LogoFeature;->IMDB:Ljava/util/regex/Pattern;

    .line 17
    const-string v0, "\\\"logo\\\"\\s*:\\s*\\\"((?:[^\\\"\\\\]|\\\\.)*)\\\""

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/cinemana/pro/logo/LogoFeature;->LOGO:Ljava/util/regex/Pattern;

    .line 18
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/cinemana/pro/logo/LogoFeature;->IO:Ljava/util/concurrent/ExecutorService;

    .line 19
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/cinemana/pro/logo/LogoFeature;->bound:Ljava/util/Map;

    .line 20
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/cinemana/pro/logo/LogoFeature;->views:Ljava/util/Map;

    .line 21
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/cinemana/pro/logo/LogoFeature;->observers:Ljava/util/Map;

    .line 22
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/cinemana/pro/logo/LogoFeature;->originalPadding:Ljava/util/Map;

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/cinemana/pro/logo/LogoFeature;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/cinemana/pro/logo/LogoFeature;->activityObservers:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/cinemana/pro/logo/LogoFeature;->methods:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/cinemana/pro/logo/LogoFeature;->repositionAt:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .line 14
    invoke-static {}, Lcom/cinemana/pro/logo/LogoFeature;->migrateDateDirectory()V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    invoke-static {p0, p1}, Lcom/cinemana/pro/logo/LogoFeature;->getJson(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Ljava/lang/String;)Z
    .locals 0

    .line 14
    invoke-static {p0}, Lcom/cinemana/pro/logo/LogoFeature;->validLogo(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 14
    invoke-static {p0}, Lcom/cinemana/pro/logo/LogoFeature;->lookupError(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    invoke-static {p0, p1}, Lcom/cinemana/pro/logo/LogoFeature;->cinemetaLogo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300()Ljava/util/Map;
    .locals 1

    .line 14
    sget-object v0, Lcom/cinemana/pro/logo/LogoFeature;->bound:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1400(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    invoke-static {p0, p1}, Lcom/cinemana/pro/logo/LogoFeature;->draw(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 14
    invoke-static {p0, p1}, Lcom/cinemana/pro/logo/LogoFeature;->androidLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1600(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    invoke-static {p0, p1, p2, p3, p4}, Lcom/cinemana/pro/logo/LogoFeature;->position(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;J)Ljava/lang/String;
    .locals 0

    .line 14
    invoke-static {p0, p1, p2}, Lcom/cinemana/pro/logo/LogoFeature;->readPrivate(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-static {p0, p1}, Lcom/cinemana/pro/logo/LogoFeature;->writePrivate(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/Object;)V
    .locals 0

    .line 14
    invoke-static {p0}, Lcom/cinemana/pro/logo/LogoFeature;->observeActivity(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/Object;)V
    .locals 0

    .line 14
    invoke-static {p0}, Lcom/cinemana/pro/logo/LogoFeature;->unobserveActivity(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600()Ljava/util/Map;
    .locals 1

    .line 14
    sget-object v0, Lcom/cinemana/pro/logo/LogoFeature;->activityObservers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Ljava/lang/Object;)V
    .locals 0

    .line 14
    invoke-static {p0}, Lcom/cinemana/pro/logo/LogoFeature;->scanActivity(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 14
    invoke-static {p0, p1, p2}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-static {p0, p1}, Lcom/cinemana/pro/logo/LogoFeature;->diagnostic(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static androidLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    .line 453
    :try_start_0
    const-string v0, "android.util.Log"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "w"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "CinemanaLogo"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 p0, 0x2

    aput-object p1, v2, p0

    invoke-static {v0, v1, v2}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 454
    :goto_0
    return-void
.end method

.method static artworkSource(ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 203
    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/cinemana/pro/logo/LogoFeature;->validLogo(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "tmdb"

    goto :goto_0

    :cond_0
    const-string p0, "cinemeta"

    :goto_0
    return-object p0
.end method

.method public static attach(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 209
    :try_start_0
    const-string v0, "getView"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 210
    :cond_0
    const-string v0, "imdbUrlRef"

    invoke-static {p1, v0}, Lcom/cinemana/pro/logo/LogoFeature;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/cinemana/pro/logo/LogoFeature;->IMDB:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/cinemana/pro/logo/LogoFeature;->clear(Ljava/lang/Object;)V

    return-void

    .line 212
    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    const-string v0, "2"

    const-string v2, "kind"

    invoke-static {p1, v2}, Lcom/cinemana/pro/logo/LogoFeature;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "series"

    goto :goto_0

    :cond_2
    const-string p1, "movie"

    :goto_0
    move-object v4, p1

    .line 213
    invoke-static {}, Lcom/cinemana/pro/logo/TmdbLogo;->readKey()Ljava/lang/String;

    move-result-object v6

    .line 214
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 v1, 0x1

    .line 215
    :cond_3
    invoke-static {p0}, Lcom/cinemana/pro/logo/TmdbLogo;->appLanguage(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 216
    if-eqz v1, :cond_4

    invoke-static {v3, v4, v5, v6}, Lcom/cinemana/pro/logo/TmdbLogo;->cacheName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    move-object v2, p1

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "logo_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".json"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 217
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tmdb_"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v6}, Lcom/cinemana/pro/logo/TmdbLogo;->fingerprint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "_"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    const-string v0, "cinemeta"

    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 218
    sget-object p1, Lcom/cinemana/pro/logo/LogoFeature;->bound:Ljava/util/Map;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/cinemana/pro/logo/LogoFeature;->bound:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    monitor-exit p1

    return-void

    :cond_6
    sget-object v0, Lcom/cinemana/pro/logo/LogoFeature;->bound:Ljava/util/Map;

    invoke-interface {v0, p0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    :try_start_2
    invoke-static {p0}, Lcom/cinemana/pro/logo/LogoFeature;->clear(Ljava/lang/Object;)V

    .line 220
    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 221
    sget-object p0, Lcom/cinemana/pro/logo/LogoFeature;->IO:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lcom/cinemana/pro/logo/LogoFeature$4;

    move-object v0, p1

    invoke-direct/range {v0 .. v8}, Lcom/cinemana/pro/logo/LogoFeature$4;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/WeakReference;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 272
    goto :goto_5

    .line 218
    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 209
    :cond_7
    :goto_4
    return-void

    .line 272
    :catchall_1
    move-exception p0

    const-string p1, "attach failed"

    invoke-static {p1, p0}, Lcom/cinemana/pro/logo/LogoFeature;->androidLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 273
    :goto_5
    return-void
.end method

.method private static varargs call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 413
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v0, Ljava/lang/Class;

    if-eqz v3, :cond_0

    move-object v4, v0

    check-cast v4, Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 414
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x23

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 415
    array-length v6, v2

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v6, :cond_2

    aget-object v9, v2, v8

    const/16 v10, 0x3a

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v9, :cond_1

    const-string v9, "null"

    goto :goto_2

    :cond_1
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    :goto_2
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 416
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/cinemana/pro/logo/LogoFeature;->methods:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Method;

    .line 417
    if-nez v6, :cond_e

    .line 418
    invoke-virtual {v4}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    array-length v9, v8

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_c

    aget-object v11, v8, v10

    .line 419
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    array-length v12, v12

    array-length v13, v2

    if-eq v12, v13, :cond_3

    goto :goto_9

    .line 420
    :cond_3
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    .line 421
    const/4 v13, 0x0

    :goto_4
    array-length v14, v12

    if-ge v13, v14, :cond_a

    .line 422
    aget-object v14, v2, v13

    if-nez v14, :cond_4

    goto :goto_7

    .line 423
    :cond_4
    aget-object v14, v12, v13

    aget-object v15, v2, v13

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    .line 424
    invoke-virtual {v14}, Ljava/lang/Class;->isPrimitive()Z

    move-result v16

    if-eqz v16, :cond_8

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v14, v7, :cond_5

    const-class v7, Ljava/lang/Integer;

    :goto_5
    move-object v14, v7

    goto :goto_6

    :cond_5
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v14, v7, :cond_6

    const-class v7, Ljava/lang/Boolean;

    goto :goto_5

    :cond_6
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v14, v7, :cond_7

    const-class v7, Ljava/lang/Float;

    goto :goto_5

    :cond_7
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v14, v7, :cond_8

    const-class v7, Ljava/lang/Long;

    goto :goto_5

    .line 425
    :cond_8
    :goto_6
    invoke-virtual {v14, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_9

    const/4 v7, 0x0

    goto :goto_8

    .line 421
    :cond_9
    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_a
    const/4 v7, 0x1

    .line 427
    :goto_8
    if-eqz v7, :cond_b

    move-object v6, v11

    goto :goto_a

    .line 418
    :cond_b
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 429
    :cond_c
    :goto_a
    if-eqz v6, :cond_d

    .line 430
    sget-object v1, Lcom/cinemana/pro/logo/LogoFeature;->methods:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 429
    :cond_d
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_e
    :goto_b
    if-eqz v3, :cond_f

    const/4 v0, 0x0

    :cond_f
    invoke-virtual {v6, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static cinemetaLogo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "logo_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    const-wide/32 v2, 0x5265c00

    invoke-static {v0, v2, v3}, Lcom/cinemana/pro/logo/LogoFeature;->readPrivate(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://v3-cinemeta.strem.io/meta/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x1194

    invoke-static {p0, p1}, Lcom/cinemana/pro/logo/LogoFeature;->getJson(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 190
    const-string p0, "\"meta\""

    invoke-virtual {v2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {v0, v2}, Lcom/cinemana/pro/logo/LogoFeature;->writePrivate(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_0
    invoke-static {v2}, Lcom/cinemana/pro/logo/LogoFeature;->parseCinemetaLogo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static clear(Ljava/lang/Object;)V
    .locals 9

    .line 286
    :try_start_0
    sget-object v0, Lcom/cinemana/pro/logo/LogoFeature;->views:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget-object v1, Lcom/cinemana/pro/logo/LogoFeature;->views:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 287
    :try_start_2
    sget-object v0, Lcom/cinemana/pro/logo/LogoFeature;->observers:Ljava/util/Map;

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    sget-object v2, Lcom/cinemana/pro/logo/LogoFeature;->observers:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 288
    const/4 v0, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    :try_start_4
    const-string v4, "getViewTreeObserver"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "removeOnScrollChangedListener"

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v2, v6, v3

    invoke-static {v4, v5, v6}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "removeOnGlobalLayoutListener"

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v2, v6, v3

    invoke-static {v4, v5, v6}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 289
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 290
    :try_start_5
    array-length v2, v1

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    if-eqz v5, :cond_1

    :try_start_6
    const-string v6, "getParent"

    new-array v7, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v7, "removeView"

    new-array v8, v0, [Ljava/lang/Object;

    aput-object v5, v8, v3

    invoke-static {v6, v7, v8}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 292
    :cond_2
    :try_start_7
    const-string v1, "root_constraint"

    invoke-static {p0, v1}, Lcom/cinemana/pro/logo/LogoFeature;->find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/cinemana/pro/logo/LogoFeature;->originalPadding:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 293
    if-eqz v1, :cond_3

    if-eqz p0, :cond_3

    .line 294
    const-string v2, "getPaddingLeft"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/cinemana/pro/logo/LogoFeature;->num(Ljava/lang/Object;)I

    move-result v2

    const-string v4, "getPaddingRight"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/cinemana/pro/logo/LogoFeature;->num(Ljava/lang/Object;)I

    move-result v4

    const-string v5, "getPaddingBottom"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/cinemana/pro/logo/LogoFeature;->num(Ljava/lang/Object;)I

    move-result v5

    .line 295
    const-string v6, "setPadding"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v3

    aput-object p0, v7, v0

    const/4 p0, 0x2

    aput-object v4, v7, p0

    const/4 p0, 0x3

    aput-object v5, v7, p0

    invoke-static {v1, v6, v7}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_3

    .line 287
    :catchall_0
    move-exception p0

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 286
    :catchall_1
    move-exception p0

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 297
    :catch_2
    move-exception p0

    :cond_3
    :goto_3
    nop

    .line 298
    return-void
.end method

.method private static compact(F)F
    .locals 5

    .line 383
    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float v1, p0, v0

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    return v2

    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v3, p0, v1

    const v4, 0x3dcccccd    # 0.1f

    if-ltz v3, :cond_1

    invoke-static {p0, v0, v1, v2, v4}, Lcom/cinemana/pro/logo/LogoFeature;->curve(FFFFF)F

    move-result p0

    return p0

    :cond_1
    const/high16 v0, 0x3e800000    # 0.25f

    cmpl-float v3, p0, v0

    if-ltz v3, :cond_2

    invoke-static {p0, v1, v0, v4, v0}, Lcom/cinemana/pro/logo/LogoFeature;->curve(FFFFF)F

    move-result p0

    return p0

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v2, v0, v1}, Lcom/cinemana/pro/logo/LogoFeature;->curve(FFFFF)F

    move-result p0

    return p0
.end method

.method private static curve(FFFFF)F
    .locals 0

    .line 382
    sub-float p0, p1, p0

    sub-float/2addr p1, p2

    div-float/2addr p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    mul-float p1, p0, p0

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p0, p2

    const/high16 p2, 0x40400000    # 3.0f

    sub-float/2addr p2, p0

    mul-float/2addr p1, p2

    sub-float/2addr p4, p3

    mul-float/2addr p4, p1

    add-float/2addr p3, p4

    return p3
.end method

.method private static diagnostic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 436
    const-string v0, "[^a-zA-Z0-9_-]"

    const-string v1, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 437
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 438
    sget-object v0, Lcom/cinemana/pro/logo/LogoFeature;->IO:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/cinemana/pro/logo/LogoFeature$6;

    invoke-direct {v1, p0, p1}, Lcom/cinemana/pro/logo/LogoFeature$6;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 451
    return-void
.end method

.method private static dp(Ljava/lang/Object;F)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 332
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "getContext"

    invoke-static {p0, v2, v1}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "getResources"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "getDisplayMetrics"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 333
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "density"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getFloat(Ljava/lang/Object;)F

    move-result p0

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private static draw(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 300
    move-object/from16 v1, p0

    const-string v0, "video_info_root"

    invoke-static {v1, v0}, Lcom/cinemana/pro/logo/LogoFeature;->find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    const-string v0, "root_constraint"

    invoke-static {v1, v0}, Lcom/cinemana/pro/logo/LogoFeature;->find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    const-string v0, "video_info_imdb_rating"

    invoke-static {v1, v0}, Lcom/cinemana/pro/logo/LogoFeature;->find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 301
    if-eqz v10, :cond_1

    if-eqz v11, :cond_1

    if-nez v12, :cond_0

    goto/16 :goto_1

    .line 304
    :cond_0
    const/4 v13, 0x1

    const/4 v14, 0x0

    :try_start_0
    const-string v0, "setClipChildren"

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-array v3, v13, [Ljava/lang/Object;

    aput-object v2, v3, v14

    invoke-static {v11, v0, v3}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "setClipToPadding"

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    new-array v3, v13, [Ljava/lang/Object;

    aput-object v2, v3, v14

    invoke-static {v11, v0, v3}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 305
    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v4, 0xbc

    const/16 v5, 0x38

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v9}, Lcom/cinemana/pro/logo/LogoFeature;->newImage(Ljava/lang/Object;Ljava/lang/String;IIIIII)Ljava/lang/Object;

    move-result-object v0

    .line 306
    const/4 v8, 0x6

    const/4 v9, 0x4

    const/16 v4, 0x88

    const/16 v5, 0x58

    const/4 v6, 0x6

    const/4 v7, 0x4

    move-object v2, v11

    invoke-static/range {v2 .. v9}, Lcom/cinemana/pro/logo/LogoFeature;->newImage(Ljava/lang/Object;Ljava/lang/String;IIIIII)Ljava/lang/Object;

    move-result-object v2

    .line 307
    const/4 v3, 0x2

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v0, v8, v14

    aput-object v2, v8, v13

    sget-object v2, Lcom/cinemana/pro/logo/LogoFeature;->views:Ljava/util/Map;

    monitor-enter v2

    :try_start_1
    sget-object v0, Lcom/cinemana/pro/logo/LogoFeature;->views:Ljava/util/Map;

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 310
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 311
    const-class v2, Lcom/cinemana/pro/logo/LogoFeature;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    new-array v15, v3, [Ljava/lang/Class;

    const-string v2, "android.view.ViewTreeObserver$OnScrollChangedListener"

    .line 312
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v15, v14

    const-string v2, "android.view.ViewTreeObserver$OnGlobalLayoutListener"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v15, v13

    new-instance v7, Lcom/cinemana/pro/logo/LogoFeature$5;

    move-object v2, v7

    move-object v3, v0

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    move-object v0, v7

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/cinemana/pro/logo/LogoFeature$5;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 311
    invoke-static {v9, v15, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 324
    const-string v2, "getViewTreeObserver"

    new-array v3, v14, [Ljava/lang/Object;

    invoke-static {v10, v2, v3}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 325
    const-string v3, "addOnScrollChangedListener"

    new-array v4, v13, [Ljava/lang/Object;

    aput-object v0, v4, v14

    invoke-static {v2, v3, v4}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v3, "addOnGlobalLayoutListener"

    new-array v4, v13, [Ljava/lang/Object;

    aput-object v0, v4, v14

    invoke-static {v2, v3, v4}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v3, Lcom/cinemana/pro/logo/LogoFeature;->observers:Ljava/util/Map;

    monitor-enter v3

    :try_start_2
    sget-object v2, Lcom/cinemana/pro/logo/LogoFeature;->observers:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 328
    invoke-static {v1, v10, v11, v12, v8}, Lcom/cinemana/pro/logo/LogoFeature;->position(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 329
    const-string v0, "ui"

    const-string v1, "same_renderer_used_for_tmdb_and_cinemeta"

    invoke-static {v0, v1}, Lcom/cinemana/pro/logo/LogoFeature;->diagnostic(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    return-void

    .line 327
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 307
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 301
    :cond_1
    :goto_1
    const-string v0, "ui"

    const-string v1, "missing_detail_view"

    invoke-static {v0, v1}, Lcom/cinemana/pro/logo/LogoFeature;->diagnostic(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static expanded(FFF)F
    .locals 0

    .line 381
    sub-float/2addr p0, p1

    sub-float/2addr p2, p1

    div-float/2addr p0, p2

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    mul-float p1, p0, p0

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p0, p2

    const/high16 p2, 0x40400000    # 3.0f

    sub-float/2addr p2, p0

    mul-float/2addr p1, p2

    return p1
.end method

.method private static field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 205
    const-string v0, ""

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    return-object v0
.end method

.method private static file(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 169
    sget-object v0, Lcom/cinemana/pro/logo/LogoFeature;->app:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 170
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getFilesDir"

    invoke-static {v0, v2, v1}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 169
    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "no context"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 336
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "getContext"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "getResources"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 337
    const-string v4, "getPackageName"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    const-string p1, "id"

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 p1, 0x2

    aput-object v1, v4, p1

    const-string p1, "getIdentifier"

    invoke-static {v3, p1, v4}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/cinemana/pro/logo/LogoFeature;->num(Ljava/lang/Object;)I

    move-result p1

    .line 338
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v5, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "findViewById"

    invoke-static {p0, p1, v0}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static fitCenter(Ljava/lang/Object;)V
    .locals 4

    .line 358
    :try_start_0
    const-string v0, "getHierarchy"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 359
    const-string v0, "com.facebook.drawee.drawable.ScalingUtils$ScaleTypeFitCenter"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 360
    const-string v2, "j"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 361
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 362
    if-eqz v0, :cond_0

    .line 363
    const-string v3, "o"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    invoke-static {p0, v3, v2}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    goto :goto_0

    .line 362
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no FIT_CENTER singleton"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    :catchall_0
    move-exception p0

    const-string v0, "FIT_CENTER failed"

    invoke-static {v0, p0}, Lcom/cinemana/pro/logo/LogoFeature;->androidLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 365
    :goto_0
    return-void
.end method

.method private static getJson(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 144
    const/4 p0, 0x0

    move v1, p0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_9

    .line 145
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v2}, Lcom/cinemana/pro/logo/LogoFeature;->isCinemetaHost(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 147
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 148
    invoke-virtual {v2, p0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v2, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 149
    const-string v3, "Accept"

    const-string v4, "application/json"

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v3, "User-Agent"

    const-string v4, "Cinemana-Pro-Logo/1"

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :try_start_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 153
    const/16 v4, 0x12d

    if-eq v3, v4, :cond_6

    const/16 v4, 0x12e

    if-eq v3, v4, :cond_6

    const/16 v4, 0x12f

    if-eq v3, v4, :cond_6

    const/16 v4, 0x133

    if-eq v3, v4, :cond_6

    const/16 v4, 0x134

    if-ne v3, v4, :cond_0

    goto/16 :goto_3

    .line 158
    :cond_0
    const/16 p1, 0xc8

    if-ne v3, p1, :cond_5

    .line 159
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "json"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "non-json content"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 160
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 161
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    new-array v1, v1, [B

    :goto_2
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    invoke-virtual {v0, v1, p0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    const/high16 v4, 0x80000

    if-gt v3, v4, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "metadata too large"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 163
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 161
    return-object p0

    .line 162
    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    throw p0

    .line 158
    :cond_5
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "metadata status "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 154
    :cond_6
    :goto_3
    const-string v3, "Location"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 155
    if-eqz v3, :cond_7

    .line 156
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 163
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 156
    nop

    .line 144
    add-int/lit8 v1, v1, 0x1

    move-object v0, v4

    goto/16 :goto_0

    .line 155
    :cond_7
    :try_start_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "redirect missing"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 163
    :catchall_1
    move-exception p0

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw p0

    .line 146
    :cond_8
    new-instance p0, Ljava/io/IOException;

    const-string p1, "untrusted location"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 165
    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string p1, "too many redirects"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static init(Ljava/lang/Object;)V
    .locals 3

    .line 34
    sput-object p0, Lcom/cinemana/pro/logo/LogoFeature;->app:Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/cinemana/pro/logo/LogoFeature;->started:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-static {p0}, Lcom/cinemana/pro/logo/LogoFeature;->registerLifecycle(Ljava/lang/Object;)V

    .line 37
    sget-object p0, Lcom/cinemana/pro/logo/LogoFeature;->IO:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/cinemana/pro/logo/LogoFeature$1;

    invoke-direct {v0}, Lcom/cinemana/pro/logo/LogoFeature$1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 48
    return-void
.end method

.method private static isCinemetaHost(Ljava/lang/String;)Z
    .locals 1

    .line 167
    const-string v0, "v3-cinemeta.strem.io"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cinemeta-catalogs.strem.io"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cinemeta-live.strem.io"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "cinemeta.strem.io"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private static location(Ljava/lang/Object;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 367
    const/4 v0, 0x0

    filled-new-array {v0, v0}, [I

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const-string v0, "getLocationInWindow"

    invoke-static {p0, v0, v2}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private static lookupError(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 275
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 276
    const-string v1, "(?:HTTP status|metadata status)\\s+(\\d{3})"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 278
    :cond_0
    instance-of p0, p0, Ljava/net/SocketTimeoutException;

    if-eqz p0, :cond_1

    const-string p0, "timeout"

    return-object p0

    .line 279
    :cond_1
    const-string p0, "network_or_parse_error"

    return-object p0
.end method

.method private static mergeWithoutOverwriting(Ljava/io/File;Ljava/io/File;I)V
    .locals 6

    .line 133
    const/16 v0, 0x8

    if-gt p2, v0, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 134
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 135
    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 136
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 138
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v5, p2, 0x1

    invoke-static {v3, v4, v5}, Lcom/cinemana/pro/logo/LogoFeature;->mergeWithoutOverwriting(Ljava/io/File;Ljava/io/File;I)V

    .line 135
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    :cond_4
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_5

    array-length p1, p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 141
    :cond_5
    return-void

    .line 133
    :cond_6
    :goto_2
    return-void
.end method

.method private static migrateDateDirectory()V
    .locals 4

    .line 125
    new-instance v0, Ljava/io/File;

    const-string v1, "/storage/emulated/0/Cinemana/work"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    new-instance v1, Ljava/io/File;

    const-string v2, "date"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "data"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 129
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 130
    :cond_2
    const/4 v0, 0x0

    invoke-static {v1, v2, v0}, Lcom/cinemana/pro/logo/LogoFeature;->mergeWithoutOverwriting(Ljava/io/File;Ljava/io/File;I)V

    .line 131
    return-void
.end method

.method private static moveIfChanged(Ljava/lang/Object;FF)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 370
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "getX"

    invoke-static {p0, v2, v1}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getY"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 371
    instance-of v3, v1, Ljava/lang/Number;

    const v4, 0x3f333333    # 0.7f

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "setX"

    invoke-static {p0, p1, v1}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_1
    instance-of p1, v2, Ljava/lang/Number;

    if-eqz p1, :cond_2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result p1

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v4

    if-lez p1, :cond_3

    :cond_2
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-array p2, v5, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "setY"

    invoke-static {p0, p1, p2}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    :cond_3
    return-void
.end method

.method private static newImage(Ljava/lang/Object;Ljava/lang/String;IIIIII)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 341
    const-string v0, "com.facebook.drawee.view.SimpleDraweeView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 342
    const/4 v1, 0x0

    .line 348
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 342
    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "getContext"

    invoke-static {p0, v4, v3}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 343
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-string v6, "android.content.Context"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v3, v5, v1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 344
    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v1

    const-string v5, "addView"

    invoke-static {p0, v5, v3}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v3, "getLayoutParams"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0, v3, v5}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "width"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "height"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 346
    int-to-float p2, p2

    invoke-static {p0, p2}, Lcom/cinemana/pro/logo/LogoFeature;->dp(Ljava/lang/Object;F)I

    move-result p2

    invoke-virtual {v5, v3, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    int-to-float p2, p3

    invoke-static {p0, p2}, Lcom/cinemana/pro/logo/LogoFeature;->dp(Ljava/lang/Object;F)I

    move-result p2

    invoke-virtual {v6, v3, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    new-array p2, v4, [Ljava/lang/Object;

    aput-object v3, p2, v1

    const-string p3, "setLayoutParams"

    invoke-static {v0, p3, p2}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    int-to-float p2, p4

    invoke-static {p0, p2}, Lcom/cinemana/pro/logo/LogoFeature;->dp(Ljava/lang/Object;F)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    int-to-float p3, p5

    invoke-static {p0, p3}, Lcom/cinemana/pro/logo/LogoFeature;->dp(Ljava/lang/Object;F)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    int-to-float p4, p6

    invoke-static {p0, p4}, Lcom/cinemana/pro/logo/LogoFeature;->dp(Ljava/lang/Object;F)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    int-to-float p5, p7

    invoke-static {p0, p5}, Lcom/cinemana/pro/logo/LogoFeature;->dp(Ljava/lang/Object;F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p5, 0x4

    new-array p5, p5, [Ljava/lang/Object;

    aput-object p2, p5, v1

    aput-object p3, p5, v4

    const/4 p2, 0x2

    aput-object p4, p5, p2

    const/4 p2, 0x3

    aput-object p0, p5, p2

    const-string p0, "setPadding"

    invoke-static {v0, p0, p5}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    new-array p0, v4, [Ljava/lang/Object;

    aput-object v2, p0, v1

    const-string p2, "setClickable"

    invoke-static {v0, p2, p0}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array p0, v4, [Ljava/lang/Object;

    aput-object v2, p0, v1

    const-string p2, "setFocusable"

    invoke-static {v0, p2, p0}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    invoke-static {v0}, Lcom/cinemana/pro/logo/LogoFeature;->fitCenter(Ljava/lang/Object;)V

    .line 350
    const-string p0, "android.net.Uri"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p1, p2, v1

    const-string p1, "parse"

    invoke-static {p0, p1, p2}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 351
    new-array p1, v4, [Ljava/lang/Object;

    aput-object p0, p1, v1

    const-string p0, "setImageURI"

    invoke-static {v0, p0, p1}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    invoke-static {v0}, Lcom/cinemana/pro/logo/LogoFeature;->fitCenter(Ljava/lang/Object;)V

    .line 353
    return-object v0
.end method

.method private static num(Ljava/lang/Object;)I
    .locals 1

    .line 366
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static observeActivity(Ljava/lang/Object;)V
    .locals 6

    .line 69
    :try_start_0
    sget-object v0, Lcom/cinemana/pro/logo/LogoFeature;->activityObservers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 70
    :cond_0
    const-string v0, "getWindow"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "getDecorView"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 71
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 72
    new-instance v3, Lcom/cinemana/pro/logo/LogoFeature$3;

    invoke-direct {v3, v2, v0}, Lcom/cinemana/pro/logo/LogoFeature$3;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/Object;)V

    .line 79
    sget-object v2, Lcom/cinemana/pro/logo/LogoFeature;->activityObservers:Ljava/util/Map;

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string p0, "postDelayed"

    const-wide/16 v4, 0xfa

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-static {v0, p0, v4}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "observe"

    invoke-static {v0, p0}, Lcom/cinemana/pro/logo/LogoFeature;->androidLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    :goto_0
    return-void
.end method

.method private static opacityIfChanged(Ljava/lang/Object;F)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 375
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 376
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "getAlpha"

    invoke-static {p0, v2, v1}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 377
    instance-of v2, v1, Ljava/lang/Number;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3c75c28f    # 0.015f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v0

    const-string v1, "setAlpha"

    invoke-static {p0, v1, v2}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :cond_1
    const v1, 0x3ba3d70a    # 0.005f

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_2

    const/4 p1, 0x4

    goto :goto_0

    :cond_2
    move p1, v0

    .line 379
    :goto_0
    const-string v1, "getVisibility"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/cinemana/pro/logo/LogoFeature;->num(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, p1, :cond_3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "setVisibility"

    invoke-static {p0, p1, v1}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    :cond_3
    return-void
.end method

.method static parseCinemetaLogo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 195
    const-string v0, ""

    if-eqz p0, :cond_3

    const-string v1, "\"meta\""

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    sget-object v1, Lcom/cinemana/pro/logo/LogoFeature;->LOGO:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 197
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 198
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\/"

    const-string v2, "/"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\\u0026"

    const-string v2, "&"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 199
    invoke-static {p0}, Lcom/cinemana/pro/logo/LogoFeature;->validLogo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p0

    :cond_2
    return-object v0

    .line 195
    :cond_3
    :goto_0
    return-object v0
.end method

.method private static position(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 385
    const/4 v0, 0x0

    aget-object v1, p4, v0

    const/4 v2, 0x1

    aget-object p4, p4, v2

    .line 386
    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "getWidth"

    invoke-static {v1, v4, v3}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/cinemana/pro/logo/LogoFeature;->num(Ljava/lang/Object;)I

    move-result v3

    new-array v5, v0, [Ljava/lang/Object;

    const-string v6, "getHeight"

    invoke-static {v1, v6, v5}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/cinemana/pro/logo/LogoFeature;->num(Ljava/lang/Object;)I

    move-result v5

    new-array v7, v0, [Ljava/lang/Object;

    invoke-static {p4, v4, v7}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/cinemana/pro/logo/LogoFeature;->num(Ljava/lang/Object;)I

    move-result v7

    new-array v8, v0, [Ljava/lang/Object;

    invoke-static {p4, v6, v8}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/cinemana/pro/logo/LogoFeature;->num(Ljava/lang/Object;)I

    move-result v6

    .line 387
    if-lez v3, :cond_4

    if-lez v5, :cond_4

    if-lez v7, :cond_4

    if-gtz v6, :cond_0

    goto/16 :goto_0

    .line 388
    :cond_0
    invoke-static {p3}, Lcom/cinemana/pro/logo/LogoFeature;->location(Ljava/lang/Object;)[I

    move-result-object p3

    invoke-static {p1}, Lcom/cinemana/pro/logo/LogoFeature;->location(Ljava/lang/Object;)[I

    move-result-object v7

    invoke-static {p2}, Lcom/cinemana/pro/logo/LogoFeature;->location(Ljava/lang/Object;)[I

    move-result-object v8

    .line 389
    new-array v9, v0, [Ljava/lang/Object;

    invoke-static {p1, v4, v9}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/cinemana/pro/logo/LogoFeature;->num(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v4, v3

    int-to-float v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 390
    aget v4, p3, v2

    aget v7, v7, v2

    sub-int/2addr v4, v7

    sub-int/2addr v4, v5

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {p1, v5}, Lcom/cinemana/pro/logo/LogoFeature;->dp(Ljava/lang/Object;F)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 391
    const/high16 v5, 0x42a00000    # 80.0f

    invoke-static {p1, v5}, Lcom/cinemana/pro/logo/LogoFeature;->dp(Ljava/lang/Object;F)I

    move-result v5

    int-to-float v5, v5

    const/high16 v7, 0x43360000    # 182.0f

    invoke-static {p1, v7}, Lcom/cinemana/pro/logo/LogoFeature;->dp(Ljava/lang/Object;F)I

    move-result v7

    int-to-float v7, v7

    invoke-static {v4, v5, v7}, Lcom/cinemana/pro/logo/LogoFeature;->expanded(FFF)F

    move-result v5

    .line 392
    invoke-static {v1, v3, v4}, Lcom/cinemana/pro/logo/LogoFeature;->moveIfChanged(Ljava/lang/Object;FF)V

    .line 393
    const-string v3, "video_info_add"

    invoke-static {p1, v3}, Lcom/cinemana/pro/logo/LogoFeature;->find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 394
    aget p3, p3, v2

    aget v4, v8, v2

    sub-int/2addr p3, v4

    sub-int/2addr p3, v6

    int-to-float p3, p3

    .line 395
    const/high16 v4, 0x41000000    # 8.0f

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/cinemana/pro/logo/LogoFeature;->location(Ljava/lang/Object;)[I

    move-result-object p3

    aget p3, p3, v2

    aget v3, v8, v2

    sub-int/2addr p3, v3

    sub-int/2addr p3, v6

    invoke-static {p1, v4}, Lcom/cinemana/pro/logo/LogoFeature;->dp(Ljava/lang/Object;F)I

    move-result v3

    sub-int/2addr p3, v3

    int-to-float p3, p3

    const/high16 v3, 0x41700000    # 15.0f

    sub-float/2addr p3, v3

    .line 397
    :cond_1
    const-string v3, "getPaddingTop"

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {p2, v3, v6}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/cinemana/pro/logo/LogoFeature;->num(Ljava/lang/Object;)I

    move-result v3

    sget-object v6, Lcom/cinemana/pro/logo/LogoFeature;->originalPadding:Ljava/util/Map;

    invoke-interface {v6, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 398
    if-nez v6, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/cinemana/pro/logo/LogoFeature;->originalPadding:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, p0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    :cond_2
    invoke-static {p1, v4}, Lcom/cinemana/pro/logo/LogoFeature;->dp(Ljava/lang/Object;F)I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p0, p3

    .line 402
    const/4 v7, 0x0

    cmpl-float v8, p0, v7

    if-lez v8, :cond_3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/high16 v9, 0x43000000    # 128.0f

    invoke-static {p1, v9}, Lcom/cinemana/pro/logo/LogoFeature;->dp(Ljava/lang/Object;F)I

    move-result v10

    add-int/2addr v8, v10

    if-ge v3, v8, :cond_3

    .line 403
    invoke-static {p1, v9}, Lcom/cinemana/pro/logo/LogoFeature;->dp(Ljava/lang/Object;F)I

    move-result v8

    float-to-double v9, p0

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int p0, v9

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v8, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 404
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/2addr v8, p0

    if-ge v3, v8, :cond_3

    const-string p1, "getPaddingLeft"

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p2, p1, p3}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/cinemana/pro/logo/LogoFeature;->num(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result p3

    add-int/2addr p3, p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p3, "getPaddingRight"

    new-array p4, v0, [Ljava/lang/Object;

    invoke-static {p2, p3, p4}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lcom/cinemana/pro/logo/LogoFeature;->num(Ljava/lang/Object;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "getPaddingBottom"

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p2, p4, v1}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p4}, Lcom/cinemana/pro/logo/LogoFeature;->num(Ljava/lang/Object;)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    aput-object p0, v1, v2

    const/4 p0, 0x2

    aput-object p3, v1, p0

    const/4 p0, 0x3

    aput-object p4, v1, p0

    const-string p0, "setPadding"

    invoke-static {p2, p0, v1}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 406
    :cond_3
    invoke-static {p1, v4}, Lcom/cinemana/pro/logo/LogoFeature;->dp(Ljava/lang/Object;F)I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0, p3}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 408
    invoke-static {p4, v7, p0}, Lcom/cinemana/pro/logo/LogoFeature;->moveIfChanged(Ljava/lang/Object;FF)V

    .line 409
    invoke-static {v1, v5}, Lcom/cinemana/pro/logo/LogoFeature;->opacityIfChanged(Ljava/lang/Object;F)V

    invoke-static {v5}, Lcom/cinemana/pro/logo/LogoFeature;->compact(F)F

    move-result p0

    invoke-static {p4, p0}, Lcom/cinemana/pro/logo/LogoFeature;->opacityIfChanged(Ljava/lang/Object;F)V

    .line 410
    return-void

    .line 387
    :cond_4
    :goto_0
    return-void
.end method

.method private static pruneDetached()V
    .locals 8

    .line 98
    sget-object v0, Lcom/cinemana/pro/logo/LogoFeature;->views:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/cinemana/pro/logo/LogoFeature;->views:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 99
    array-length v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, v1, v3

    .line 101
    :try_start_1
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v6, "isAttachedToWindow"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 102
    sget-object v5, Lcom/cinemana/pro/logo/LogoFeature;->bound:Ljava/util/Map;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v6, Lcom/cinemana/pro/logo/LogoFeature;->bound:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    :try_start_3
    invoke-static {v4}, Lcom/cinemana/pro/logo/LogoFeature;->clear(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 102
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 105
    :catchall_1
    move-exception v4

    :cond_0
    :goto_1
    nop

    .line 99
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 107
    :cond_1
    return-void

    .line 98
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method

.method private static readPrivate(Ljava/lang/String;J)Ljava/lang/String;
    .locals 5

    .line 179
    const-string v0, ""

    :try_start_0
    invoke-static {p0}, Lcom/cinemana/pro/logo/LogoFeature;->file(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    sub-long/2addr v1, v3

    cmp-long p1, v1, p1

    if-gtz p1, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p1

    const-wide/32 v1, 0x80000

    cmp-long p1, p1, v1

    if-lez p1, :cond_0

    goto :goto_1

    .line 180
    :cond_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p0, v1

    new-array p2, p0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_1

    sub-int v3, p0, v2

    invoke-virtual {p1, p2, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_1

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, p2, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 179
    :cond_2
    :goto_1
    return-object v0

    .line 181
    :catch_0
    move-exception p0

    return-object v0
.end method

.method private static registerLifecycle(Ljava/lang/Object;)V
    .locals 5

    .line 50
    sget-object v0, Lcom/cinemana/pro/logo/LogoFeature;->lifecycleCallback:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-void

    .line 52
    :cond_0
    :try_start_0
    const-string v0, "android.app.Application$ActivityLifecycleCallbacks"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 53
    const-class v1, Lcom/cinemana/pro/logo/LogoFeature;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    new-instance v0, Lcom/cinemana/pro/logo/LogoFeature$2;

    invoke-direct {v0}, Lcom/cinemana/pro/logo/LogoFeature$2;-><init>()V

    invoke-static {v1, v3, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 62
    const-string v1, "registerActivityLifecycleCallbacks"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {p0, v1, v2}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sput-object v0, Lcom/cinemana/pro/logo/LogoFeature;->lifecycleCallback:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "lifecycle"

    invoke-static {v0, p0}, Lcom/cinemana/pro/logo/LogoFeature;->androidLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    :goto_0
    return-void
.end method

.method private static scanActivity(Ljava/lang/Object;)V
    .locals 3

    .line 90
    invoke-static {p0}, Lcom/cinemana/pro/logo/TmdbSettings;->inspect(Ljava/lang/Object;)V

    .line 91
    invoke-static {}, Lcom/cinemana/pro/logo/LogoFeature;->pruneDetached()V

    .line 92
    :try_start_0
    const-string v0, "getSupportFragmentManager"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/cinemana/pro/logo/LogoFeature;->scanFragments(Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 93
    :goto_0
    return-void
.end method

.method private static scanFragments(Ljava/lang/Object;I)V
    .locals 4

    .line 109
    if-eqz p0, :cond_5

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    goto :goto_5

    .line 112
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "getFragments"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception p0

    goto :goto_4

    .line 112
    :catch_0
    move-exception v1

    :try_start_1
    const-string v1, "L"

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 113
    :goto_0
    instance-of v1, p0, Ljava/lang/Iterable;

    if-nez v1, :cond_1

    return-void

    .line 114
    :cond_1
    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 115
    if-nez v1, :cond_2

    goto :goto_1

    .line 116
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.shabakaty.downloader.d15"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    .line 117
    :try_start_2
    const-string v2, "j2"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v1, v2}, Lcom/cinemana/pro/logo/LogoFeature;->attach(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    .line 119
    :cond_3
    :goto_2
    :try_start_3
    const-string v2, "getChildFragmentManager"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2}, Lcom/cinemana/pro/logo/LogoFeature;->scanFragments(Ljava/lang/Object;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v1

    .line 120
    :goto_3
    goto :goto_1

    .line 121
    :cond_4
    :goto_4
    nop

    .line 122
    return-void

    .line 109
    :cond_5
    :goto_5
    return-void
.end method

.method private static unobserveActivity(Ljava/lang/Object;)V
    .locals 4

    .line 85
    :try_start_0
    sget-object v0, Lcom/cinemana/pro/logo/LogoFeature;->activityObservers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    const-string v1, "getWindow"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "getDecorView"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "removeCallbacks"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-static {p0, v1, v3}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception p0

    :cond_0
    :goto_0
    nop

    .line 88
    return-void
.end method

.method private static validLogo(Ljava/lang/String;)Z
    .locals 3

    .line 282
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v2, 0x800

    if-ge p0, v2, :cond_0

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    const-string v2, "https"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v2, 0x3

    if-le p0, v2, :cond_0

    invoke-virtual {v1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception p0

    return v0
.end method

.method private static writePrivate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 173
    :try_start_0
    invoke-static {p0}, Lcom/cinemana/pro/logo/LogoFeature;->file(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, ".tmp"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 174
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    .line 175
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 174
    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 176
    :catch_0
    move-exception p0

    :cond_0
    :goto_0
    nop

    .line 177
    return-void
.end method

.method private static xy(Ljava/lang/Object;FF)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 368
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "setX"

    invoke-static {p0, p1, v1}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    aput-object p1, p2, v2

    const-string p1, "setY"

    invoke-static {p0, p1, p2}, Lcom/cinemana/pro/logo/LogoFeature;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
