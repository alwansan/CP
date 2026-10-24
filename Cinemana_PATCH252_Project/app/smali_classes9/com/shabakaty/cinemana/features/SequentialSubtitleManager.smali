.class public final Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;
.super Ljava/lang/Object;
.source "SequentialSubtitleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;,
        Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;
    }
.end annotation


# static fields
.field private static final AUTO_ACTIVE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final EP_MARKER:Ljava/util/regex/Pattern;

.field private static final FILE_CACHE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final LAST_HANDLED:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MANUAL_ACTIVE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final NO_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field private static final OBSERVED_EPISODES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OBSERVERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final PENDING_WORK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final POLL_HANDLERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final POLL_RUNNABLES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final PREFS:Ljava/lang/String; = "cinemana_sequential_subtitles_v1"

.field private static final REQUEST_TREE:I = 0x5213

.field private static final RETRYING_EPISODES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCAN_REPORTS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CinemanaSeqSubs"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-string v0, "[0-9\u0660-\u0669\u06f0-\u06f9]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 30
    const-string v0, "(?iu)(?:^|[^\\p{L}])(?:episode|episodes|ep|\u062d\u0644\u0642\u0629|\u0627\u0644\u062d\u0644\u0642\u0629|\u062d)\\s*[._ -]*0*([0-9\u0660-\u0669\u06f0-\u06f9]+)(?:[^0-9\u0660-\u0669\u06f0-\u06f9]|$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->EP_MARKER:Ljava/util/regex/Pattern;

    .line 31
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->OBSERVERS:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->LAST_HANDLED:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->AUTO_ACTIVE:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->MANUAL_ACTIVE:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->PENDING_WORK:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->OBSERVED_EPISODES:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->POLL_HANDLERS:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->POLL_RUNNABLES:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->RETRYING_EPISODES:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->FILE_CACHE:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->SCAN_REPORTS:Ljava/util/Map;

    .line 1411
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->onObservedModelChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1000(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->scheduleEpisodeTransitionRetries(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;
    .locals 0

    .line 25
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastStatusKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 25
    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->getStringPref(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)V
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->postSettingsActionsDialog(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)V

    return-void
.end method

.method static synthetic access$1400(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)V
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->showSettingsActionsDialog(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)V

    return-void
.end method

.method static synthetic access$1500(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)V
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->startTreePicker(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)V

    return-void
.end method

.method static synthetic access$1600(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)V
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->toggleSequentialMatching(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)V

    return-void
.end method

.method static synthetic access$1700(Ljava/lang/Object;)V
    .locals 0

    .line 25
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->openSubtitleSyncDialog(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1800(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)V
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->rescanCurrentFolder(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;
    .locals 0

    .line 25
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->treeKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    .line 25
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->POLL_RUNNABLES:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2000(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->clearWorkFolder(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100()[Ljava/lang/Class;
    .locals 1

    .line 25
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$2200(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 25
    invoke-static {p0, p1, p2, p3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Ljava/lang/Object;)Z
    .locals 0

    .line 25
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->isActivityInactive(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->getCurrentModel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Ljava/lang/Object;)Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;
    .locals 0

    .line 25
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->makeWorkInfo(Ljava/lang/Object;)Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;
    .locals 0

    .line 25
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->episodeKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700()Ljava/util/Map;
    .locals 1

    .line 25
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->OBSERVED_EPISODES:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/Map;
    .locals 1

    .line 25
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->LAST_HANDLED:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 25
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->onModelChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static addSettingsButton(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Runnable;[Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 499
    const-string v0, "android.content.Context"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 500
    const-string v1, "android.widget.Button"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 501
    const-string v2, "android.view.View"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 502
    const-string v3, "android.view.View$OnClickListener"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 503
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 504
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Ljava/lang/CharSequence;

    aput-object v1, v0, v6

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v6

    const-string p2, "setText"

    invoke-static {p0, p2, v0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    new-array p2, v4, [Ljava/lang/Class;

    aput-object v3, p2, v6

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Class;

    aput-object v3, v1, v6

    new-instance v3, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$12;

    invoke-direct {v3, p4, p3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$12;-><init>([Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-static {v0, v1, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p3

    new-array p4, v4, [Ljava/lang/Object;

    aput-object p3, p4, v6

    const-string p3, "setOnClickListener"

    invoke-static {p0, p3, p2, p4}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    new-array p2, v4, [Ljava/lang/Class;

    aput-object v2, p2, v6

    new-array p3, v4, [Ljava/lang/Object;

    aput-object p0, p3, v6

    const-string p0, "addView"

    invoke-static {p1, p0, p2, p3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    return-void
.end method

.method private static addSettingsHint(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 486
    const-string v0, "android.content.Context"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 487
    const-string v1, "android.widget.TextView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 488
    const-string v2, "android.view.View"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 489
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 490
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Ljava/lang/CharSequence;

    aput-object v1, v0, v5

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v5

    const-string p2, "setText"

    invoke-static {p0, p2, v0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    new-array p2, v3, [Ljava/lang/Class;

    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v0, p2, v5

    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v0, v1, v5

    const-string v0, "setTextSize"

    invoke-static {p0, v0, p2, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const/4 p2, 0x4

    new-array v0, p2, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v1, v0, v6

    .line 493
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v7, 0x10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array p2, p2, [Ljava/lang/Object;

    aput-object v1, p2, v5

    aput-object v1, p2, v3

    aput-object v1, p2, v4

    aput-object v7, p2, v6

    .line 492
    const-string v1, "setPadding"

    invoke-static {p0, v1, v0, p2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    new-array p2, v3, [Ljava/lang/Class;

    aput-object v2, p2, v5

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v5

    const-string p0, "addView"

    invoke-static {p1, p0, p2, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    return-void
.end method

.method private static addUniquePath(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 928
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 929
    :cond_0
    return-void
.end method

.method private static bestMatch(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;"
        }
    .end annotation

    .line 1076
    const/4 v0, 0x0

    if-eqz p0, :cond_c

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 1077
    :cond_0
    nop

    .line 1078
    nop

    .line 1079
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/high16 v1, -0x80000000

    const/high16 v2, -0x80000000

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;

    .line 1080
    iget-object v4, v3, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;->name:Ljava/lang/String;

    .line 1081
    const/16 v5, 0x2e

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 1082
    const/4 v6, 0x0

    if-lez v5, :cond_1

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1083
    :cond_1
    sget-object v5, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 1084
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1085
    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->canonicalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1086
    :cond_2
    nop

    .line 1087
    const/high16 v5, -0x80000000

    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_7

    .line 1088
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_4

    .line 1090
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    const/16 v8, 0x3c

    goto :goto_3

    .line 1091
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v9

    if-ne v6, v8, :cond_5

    const/16 v8, 0x4b

    goto :goto_3

    .line 1092
    :cond_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    if-ne v6, v8, :cond_6

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v9

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->isResolution(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x37

    goto :goto_3

    .line 1093
    :cond_6
    const/16 v8, 0x14

    .line 1094
    :goto_3
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1087
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1096
    :cond_7
    if-ne v5, v1, :cond_8

    goto/16 :goto_0

    .line 1097
    :cond_8
    invoke-static {v4, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->hasEpisodeMarker(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    add-int/lit8 v5, v5, 0x78

    .line 1098
    :cond_9
    invoke-static {v4, p2, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->seasonMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1099
    add-int/2addr v5, v4

    .line 1100
    iget-object v4, v3, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;->extension:Ljava/lang/String;

    invoke-static {v4}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->extensionPreference(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v5, v4

    .line 1102
    if-le v5, v2, :cond_a

    move-object v0, v3

    move v2, v5

    .line 1103
    :cond_a
    goto/16 :goto_0

    .line 1104
    :cond_b
    return-object v0

    .line 1076
    :cond_c
    :goto_5
    return-object v0
.end method

.method private static varargs call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1376
    if-eqz p0, :cond_1

    .line 1377
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->findPublicMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1378
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1379
    :cond_0
    invoke-virtual {p1, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1376
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "target for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static canonicalNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1183
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1184
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1185
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1186
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 1187
    if-ltz v4, :cond_1

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1185
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1189
    :cond_2
    nop

    .line 1190
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-ge v2, p0, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    const/16 v3, 0x30

    if-ne p0, v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1191
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0
.end method

.method private static clearStaleEpisodeState(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Z
    .locals 6

    .line 725
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastStatusKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->getStringPref(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 726
    invoke-static {v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->statusEpisode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 727
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastEpisodeKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->getStringPref(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 728
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_0

    iget-object v3, p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 729
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 730
    :goto_1
    if-nez v2, :cond_2

    if-nez v3, :cond_2

    return v5

    .line 731
    :cond_2
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastStatusKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->removePref(Ljava/lang/Object;Ljava/lang/String;)V

    .line 732
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastDiagnosticsKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->removePref(Ljava/lang/Object;Ljava/lang/String;)V

    .line 733
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastIndexCountKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->removePref(Ljava/lang/Object;Ljava/lang/String;)V

    .line 734
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastFileKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->removePref(Ljava/lang/Object;Ljava/lang/String;)V

    .line 735
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastEpisodeKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->removePref(Ljava/lang/Object;Ljava/lang/String;)V

    .line 736
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleared stale subtitle diagnostics for "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v2, p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->key:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "; previousStatus="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "; previousAppliedEpisode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "; currentEpisode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episode:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logInfo(Ljava/lang/String;)V

    .line 737
    return v4
.end method

.method private static clearWorkFolder(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;Ljava/lang/String;)V
    .locals 1

    .line 604
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->treeKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->removePref(Ljava/lang/Object;Ljava/lang/String;)V

    .line 605
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->enabledKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->removePref(Ljava/lang/Object;Ljava/lang/String;)V

    .line 606
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastStatusKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->removePref(Ljava/lang/Object;Ljava/lang/String;)V

    .line 607
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastDiagnosticsKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->removePref(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastIndexCountKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->removePref(Ljava/lang/Object;Ljava/lang/String;)V

    .line 609
    sget-object p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->FILE_CACHE:Ljava/util/Map;

    monitor-enter p1

    if-eqz p2, :cond_0

    :try_start_0
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->FILE_CACHE:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 610
    sget-object p2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->LAST_HANDLED:Ljava/util/Map;

    monitor-enter p2

    :try_start_1
    sget-object p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->LAST_HANDLED:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 611
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->resetAutomaticSubtitle(Ljava/lang/Object;)V

    .line 612
    sget-object p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->AUTO_ACTIVE:Ljava/util/Map;

    monitor-enter p1

    :try_start_2
    sget-object p2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->AUTO_ACTIVE:Ljava/util/Map;

    invoke-interface {p2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 613
    sget-object p2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->MANUAL_ACTIVE:Ljava/util/Map;

    monitor-enter p2

    :try_start_3
    sget-object p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->MANUAL_ACTIVE:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 614
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->setSubtitleSyncEnabled(Ljava/lang/Object;Z)V

    .line 615
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->isArabic()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\u062a\u0645 \u0645\u0633\u062d \u0625\u0639\u062f\u0627\u062f\u0627\u062a \u0645\u062c\u0644\u062f \u0627\u0644\u062a\u0631\u062c\u0645\u0627\u062a \u0644\u0647\u0630\u0627 \u0627\u0644\u0639\u0645\u0644"

    goto :goto_0

    :cond_1
    const-string p1, "Saved subtitle folder cleared for this title"

    :goto_0
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->showToast(Ljava/lang/Object;Ljava/lang/String;)V

    .line 616
    return-void

    .line 613
    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    .line 612
    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    .line 610
    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    .line 609
    :catchall_3
    move-exception p0

    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0
.end method

.method private static currentModelFromViewModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1222
    const-string v0, "z"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1223
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getValue"

    invoke-static {p0, v2, v0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static displayFolderName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1236
    const/16 p0, 0x2f

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "android.net.Uri"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1237
    const-string v2, "parse"

    new-array v3, v0, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1238
    const-string v3, "android.provider.DocumentsContract"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1239
    const-string v6, "getTreeDocumentId"

    new-array v7, v0, [Ljava/lang/Class;

    aput-object v1, v7, v5

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    aput-object v2, v3, v5

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1240
    invoke-virtual {v1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1241
    if-ltz v2, :cond_0

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1242
    :cond_0
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 1243
    if-ltz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge v2, v3, :cond_1

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1244
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    return-object p1

    .line 1245
    :catchall_0
    move-exception v1

    .line 1246
    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    .line 1247
    if-ltz p0, :cond_3

    add-int/2addr p0, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p0, v0, :cond_3

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method private static emptyDash(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1326
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p0, "\u2014"

    :cond_1
    return-object p0
.end method

.method private static enabledKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;
    .locals 2

    .line 1227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static episodeKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;
    .locals 3

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->season:Ljava/lang/String;

    invoke-static {v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->emptyDash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episode:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static extensionOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1140
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1141
    const/4 v1, 0x0

    if-ltz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1142
    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1143
    const-string v0, "srt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ass"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ssa"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "vtt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move-object v1, p0

    :cond_2
    return-object v1

    .line 1141
    :cond_3
    :goto_0
    return-object v1
.end method

.method private static extensionPreference(Ljava/lang/String;)I
    .locals 1

    .line 1132
    const-string v0, "ass"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 1133
    :cond_0
    const-string v0, "srt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x3

    return p0

    .line 1134
    :cond_1
    const-string v0, "ssa"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x2

    return p0

    .line 1135
    :cond_2
    const-string v0, "vtt"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    .line 1136
    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static extractEpisodeFromDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1165
    const-string v0, ""

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1166
    :cond_0
    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->EP_MARKER:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1167
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    .line 1165
    :cond_2
    :goto_0
    return-object v0
.end method

.method private static extractEpisodeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1171
    const/4 v0, 0x0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_3

    .line 1172
    :cond_0
    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1174
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->canonicalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1175
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    .line 1177
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    goto :goto_1

    .line 1178
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_2
    if-ltz p0, :cond_6

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_5
    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    .line 1179
    :cond_6
    return-object v0

    .line 1171
    :cond_7
    :goto_3
    return-object v0
.end method

.method private static field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1339
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1340
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1341
    :goto_0
    if-eqz v0, :cond_2

    .line 1343
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1344
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1345
    :cond_1
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1346
    :catch_0
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1348
    :cond_2
    new-instance p0, Ljava/lang/NoSuchFieldException;

    invoke-direct {p0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static filesForTree(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 833
    move-object/from16 v0, p1

    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->FILE_CACHE:Ljava/util/Map;

    monitor-enter v1

    .line 834
    :try_start_0
    sget-object v2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->FILE_CACHE:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 835
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v1

    return-object v2

    .line 836
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 837
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 838
    const-string v2, "android.net.Uri"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 839
    const-string v3, "parse"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v7

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 840
    const-string v5, "android.provider.DocumentsContract"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    .line 841
    const-string v5, "getTreeDocumentId"

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v2, v8, v7

    invoke-virtual {v13, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v7

    invoke-virtual {v5, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 842
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 843
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 844
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scanning tree root="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; uri="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logInfo(Ljava/lang/String;)V

    .line 845
    move-object/from16 v4, p0

    move-object v5, v3

    move-object v6, v14

    move-object v8, v15

    move-object v9, v1

    move-object v10, v13

    move-object v11, v2

    move-object/from16 v12, v16

    invoke-static/range {v4 .. v12}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->scanDirectory(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ILjava/util/Set;Ljava/util/List;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)V

    .line 846
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 847
    const-string v5, ""

    .line 848
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 852
    invoke-static {v14, v1, v3, v13, v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->scanExternalFilesystemFallback(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    .line 854
    :cond_1
    new-instance v2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$13;

    invoke-direct {v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$13;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 859
    invoke-static/range {v16 .. v16}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->joinErrors(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 860
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 861
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " | "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 862
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 863
    :cond_3
    if-nez v4, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 864
    const-string v2, "SAF query returned zero supported subtitle files; no readable filesystem fallback was available"

    .line 866
    :cond_4
    :goto_0
    sget-object v3, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->SCAN_REPORTS:Ljava/util/Map;

    monitor-enter v3

    .line 867
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    sget-object v2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->SCAN_REPORTS:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 868
    :cond_5
    sget-object v4, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->SCAN_REPORTS:Ljava/util/Map;

    invoke-interface {v4, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 870
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->FILE_CACHE:Ljava/util/Map;

    monitor-enter v2

    :try_start_2
    sget-object v3, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->FILE_CACHE:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 871
    :cond_6
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Indexed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " supported subtitle files via SAF/filesystem; folders queried="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v15}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logInfo(Ljava/lang/String;)V

    .line 872
    return-object v1

    .line 869
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 836
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method private static filesystemPathsForDocumentId(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 909
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 910
    if-nez p0, :cond_0

    return-object v0

    .line 911
    :cond_0
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 912
    if-gtz v1, :cond_1

    return-object v0

    .line 913
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 914
    const/4 v3, 0x1

    add-int/2addr v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x5c

    const/16 v4, 0x2f

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 915
    :goto_0
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 916
    :cond_2
    const-string v3, "primary"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 917
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/storage/emulated/0/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->addUniquePath(Ljava/util/List;Ljava/lang/String;)V

    .line 918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->addUniquePath(Ljava/util/List;Ljava/lang/String;)V

    .line 919
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/storage/self/primary/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->addUniquePath(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 921
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/storage/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->addUniquePath(Ljava/util/List;Ljava/lang/String;)V

    .line 922
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/mnt/media_rw/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->addUniquePath(Ljava/util/List;Ljava/lang/String;)V

    .line 924
    :goto_1
    return-object v0
.end method

.method private static findNoArgMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1365
    nop

    :goto_0
    if-eqz p0, :cond_1

    .line 1367
    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1368
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1369
    :cond_0
    return-object v0

    .line 1370
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 1372
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static findPublicMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1383
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 1384
    :try_start_0
    invoke-virtual {v3, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1385
    :catch_0
    move-exception v4

    .line 1386
    :try_start_1
    invoke-static {v3, p1, p2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->findPublicMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception v3

    .line 1383
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1389
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 1390
    if-eqz v0, :cond_1

    .line 1391
    :try_start_2
    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    .line 1392
    :catch_2
    move-exception v1

    .line 1393
    :try_start_3
    invoke-static {v0, p1, p2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->findPublicMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    return-object p0

    :catch_3
    move-exception v0

    .line 1396
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0
.end method

.method private static varargs firstNonEmpty([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1328
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1329
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private static getBooleanPref(Ljava/lang/Object;Ljava/lang/String;Z)Z
    .locals 7

    .line 1289
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->prefs(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "getBoolean"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    aput-object v4, v2, v6

    invoke-static {p0, v1, v3, v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 1290
    :catchall_0
    move-exception p0

    return p2
.end method

.method private static getCurrentModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1209
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->getPlayerViewModel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1210
    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->currentModelFromViewModel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v0

    .line 1211
    :catchall_0
    move-exception p0

    const-string v1, "Could not read current video model"

    invoke-static {v1, p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static getPlayerViewModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1215
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "F"

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->findNoArgMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1216
    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1217
    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1218
    return-object p0
.end method

.method private static getStringPref(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1282
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->prefs(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1283
    const-string v0, "getString"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    invoke-static {p0, v0, v2, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1284
    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object p2

    .line 1285
    :catchall_0
    move-exception p0

    return-object p2
.end method

.method private static hasEpisodeMarker(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1108
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->EP_MARKER:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1109
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->canonicalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 1110
    :cond_1
    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(?iu)(?:^|[^\\p{L}])s0*[0-9\u0660-\u0669\u06f0-\u06f9]{1,3}[ ._-]*e0*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "(?:[^0-9\u0660-\u0669\u06f0-\u06f9]|$)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 1112
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method private static importSubtitle(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    .line 750
    const-string v0, "a"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.content.Context"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 751
    const-string v3, "android.net.Uri"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 752
    const-string v4, "com.shabakaty.downloader.SubtitleImportFile"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 753
    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v2, v6, v1

    const/4 v2, 0x1

    aput-object v3, v6, v2

    invoke-virtual {v4, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p0, v4, v1

    aput-object p1, v4, v2

    const/4 p1, 0x0

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 754
    if-nez p1, :cond_0

    return v1

    .line 755
    :cond_0
    const-string v3, "com.shabakaty.cinemana.player.VideoPlayerActivity"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 756
    const-string v4, "com.shabakaty.downloader.cu"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 757
    new-array v5, v2, [Ljava/lang/Class;

    aput-object v3, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 758
    new-array v5, v2, [Ljava/lang/Object;

    aput-object p0, v5, v1

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 759
    new-array v3, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v3, v1

    invoke-virtual {v4, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    return v2

    .line 761
    :catchall_0
    move-exception p0

    .line 762
    const-string p1, "Subtitle import failed"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 763
    return v1
.end method

.method public static installObserver(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 9

    .line 46
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 47
    :cond_0
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->OBSERVERS:Ljava/util/Map;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->OBSERVERS:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 50
    :try_start_1
    const-string v1, "androidx.lifecycle.Observer"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    new-instance v6, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$1;

    invoke-direct {v6, p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$1;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v4, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    .line 66
    const-string v4, "androidx.lifecycle.LifecycleOwner"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 67
    const-string v6, "observe"

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Class;

    aput-object v4, v8, v5

    aput-object v1, v8, v3

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p0, v1, v5

    aput-object v2, v1, v3

    invoke-static {p1, v6, v8, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->OBSERVERS:Ljava/util/Map;

    invoke-interface {p1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string p1, "Observer installed"

    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logInfo(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    goto :goto_0

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    :try_start_2
    const-string v1, "Observer installation failed"

    invoke-static {v1, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 77
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->startEpisodePolling(Ljava/lang/Object;)V

    .line 80
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->onPlayerReady(Ljava/lang/Object;)V

    .line 81
    const-wide/16 v0, 0x15e

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->scheduleStartupRetry(Ljava/lang/Object;J)V

    .line 82
    const-wide/16 v0, 0x3b6

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->scheduleStartupRetry(Ljava/lang/Object;J)V

    .line 83
    const-wide/16 v0, 0x708

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->scheduleStartupRetry(Ljava/lang/Object;J)V

    .line 84
    return-void

    .line 74
    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 46
    :cond_2
    :goto_1
    return-void
.end method

.method private static isActivityInactive(Ljava/lang/Object;)Z
    .locals 6

    .line 256
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "isFinishing"

    sget-object v4, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p0, v3, v4, v5}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    return v0

    .line 257
    :catchall_0
    move-exception v2

    :cond_0
    nop

    .line 258
    :try_start_1
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "isDestroyed"

    sget-object v4, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p0, v3, v4, v5}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p0, :cond_1

    return v0

    .line 259
    :catchall_1
    move-exception p0

    :cond_1
    nop

    .line 260
    return v1
.end method

.method private static isArabic()Z
    .locals 2

    .line 1322
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 1323
    :catchall_0
    move-exception v0

    const/4 v0, 0x1

    return v0
.end method

.method private static isResolution(Ljava/lang/String;)Z
    .locals 1

    .line 1127
    const-string v0, "360"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "480"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "540"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "720"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1128
    const-string v0, "1080"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1440"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "2160"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "4320"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 1127
    :goto_1
    return p0
.end method

.method private static joinErrors(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1053
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1054
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1055
    if-lez v2, :cond_0

    const-string v3, " | "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1057
    if-eqz v3, :cond_1

    const/16 v4, 0xa

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xd

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1054
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1059
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, v1, :cond_3

    const-string p0, " | ..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static lastDiagnosticsKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;
    .locals 2

    .line 1231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_diagnostics:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static lastEpisodeKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;
    .locals 2

    .line 1229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_episode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static lastFileKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;
    .locals 2

    .line 1228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_file:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static lastIndexCountKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;
    .locals 2

    .line 1232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_index_count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static lastStatusKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;
    .locals 2

    .line 1230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last_status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    .line 1406
    :try_start_0
    const-string v0, "android.util.Log"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1407
    const-string v1, "e"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/Throwable;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "CinemanaSeqSubs"

    aput-object v2, v1, v5

    aput-object p0, v1, v6

    aput-object p1, v1, v7

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1408
    :catchall_0
    move-exception p0

    :goto_0
    nop

    .line 1409
    return-void
.end method

.method private static logInfo(Ljava/lang/String;)V
    .locals 7

    .line 1400
    :try_start_0
    const-string v0, "android.util.Log"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "i"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "CinemanaSeqSubs"

    aput-object v2, v1, v5

    aput-object p0, v1, v6

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1401
    :catchall_0
    move-exception p0

    :goto_0
    nop

    .line 1402
    return-void
.end method

.method private static makeWorkInfo(Ljava/lang/Object;)Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;
    .locals 10

    .line 1147
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1148
    :cond_0
    const-string v1, "kind"

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->readString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1149
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "episodeNummer"

    invoke-static {p0, v3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->readString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "episodeDesc"

    invoke-static {p0, v3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->readString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->extractEpisodeFromDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    aput-object v3, v2, v6

    invoke-static {v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->firstNonEmpty([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1150
    invoke-static {v7}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->extractEpisodeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1151
    if-nez v8, :cond_1

    return-object v0

    .line 1152
    :cond_1
    const-string v0, "rootSeries"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->readString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1153
    const/4 v2, 0x6

    new-array v3, v2, [Ljava/lang/String;

    const-string v9, "customEnTitle"

    invoke-static {p0, v9}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->readString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v4

    const-string v4, "enTitle"

    invoke-static {p0, v4}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->readString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 1154
    const-string v4, "customArTitle"

    invoke-static {p0, v4}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->readString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v1, "arTitle"

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->readString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x3

    aput-object v1, v3, v4

    const/4 v1, 0x4

    aput-object v0, v3, v1

    const/4 v1, 0x5

    const-string v4, "\u0627\u0644\u0639\u0645\u0644 \u0627\u0644\u062d\u0627\u0644\u064a"

    aput-object v4, v3, v1

    .line 1153
    invoke-static {v3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->firstNonEmpty([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1156
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const-string v3, "title_"

    if-lez v1, :cond_2

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id_"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->normalizeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1157
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->seriesLikeTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->normalizeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1158
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->seriesLikeTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->normalizeKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object v3, v0

    .line 1159
    const-string v0, "season"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->readString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->canonicalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1160
    if-nez p0, :cond_4

    const-string p0, ""

    .line 1161
    :cond_4
    new-instance v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;

    move-object v2, v0

    move-object v6, v8

    move-object v8, p0

    invoke-direct/range {v2 .. v8}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static newBuilder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1262
    const-string v0, "android.content.Context"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1263
    const-string v1, "android.app.AlertDialog$Builder"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1264
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static normalizeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1203
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 1204
    :cond_0
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "[^\\p{L}\\p{N}]"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static number(Ljava/lang/Object;I)I
    .locals 1

    .line 1332
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p1

    :cond_0
    return p1
.end method

.method public static onActivityResult(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 8

    .line 295
    if-eqz p0, :cond_b

    const/16 v0, 0x5213

    if-eq p1, v0, :cond_0

    goto/16 :goto_9

    .line 297
    :cond_0
    sget-object p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->PENDING_WORK:Ljava/util/Map;

    monitor-enter p1

    :try_start_0
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->PENDING_WORK:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 298
    const/4 p1, -0x1

    if-ne p2, p1, :cond_a

    if-nez p3, :cond_1

    goto/16 :goto_8

    .line 303
    :cond_1
    :try_start_1
    const-string p1, "getData"

    sget-object p2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p3, p1, p2, v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 304
    if-nez p1, :cond_2

    return-void

    .line 305
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 306
    const-string v2, "getFlags"

    sget-object v3, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p3, v2, v3, v4}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->number(Ljava/lang/Object;I)I

    move-result p3

    .line 307
    and-int/lit8 p3, p3, 0x3

    .line 308
    and-int/lit8 v2, p3, 0x1

    const/4 v3, 0x1

    if-nez v2, :cond_3

    const/4 p3, 0x1

    .line 309
    :cond_3
    const-string v2, "getContentResolver"

    sget-object v4, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v4, v5}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 311
    const/4 v4, 0x2

    :try_start_2
    const-string v5, "takePersistableUriPermission"

    new-array v6, v4, [Ljava/lang/Class;

    const-string v7, "android.net.Uri"

    .line 312
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-array v7, v4, [Ljava/lang/Object;

    aput-object p1, v7, v1

    aput-object p3, v7, v3

    .line 311
    invoke-static {v2, v5, v6, v7}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    goto :goto_1

    .line 313
    :catchall_0
    move-exception p3

    .line 317
    :try_start_3
    const-string v5, "takePersistableUriPermission"

    new-array v6, v4, [Ljava/lang/Class;

    const-string v7, "android.net.Uri"

    .line 318
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v6, v1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object v7, v4, v3

    .line 317
    invoke-static {v2, v5, v6, v4}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 319
    :catchall_1
    move-exception p1

    :try_start_4
    const-string p1, "Could not persist folder permission"

    invoke-static {p1, p3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    nop

    .line 321
    :goto_1
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->getCurrentModel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 322
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->makeWorkInfo(Ljava/lang/Object;)Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;

    move-result-object v0

    .line 323
    :goto_2
    if-eqz v0, :cond_7

    iget-object p3, v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->key:Ljava/lang/String;

    if-nez p3, :cond_5

    goto/16 :goto_4

    .line 327
    :cond_5
    invoke-static {v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->treeKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3, p2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->putStringPref(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-static {v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->enabledKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3, v3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->putBooleanPref(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 329
    invoke-static {v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastStatusKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->removePref(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    invoke-static {v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastDiagnosticsKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->removePref(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    invoke-static {v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastIndexCountKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->removePref(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    sget-object p3, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->FILE_CACHE:Ljava/util/Map;

    monitor-enter p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->FILE_CACHE:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 333
    :try_start_6
    sget-object p3, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->LAST_HANDLED:Ljava/util/Map;

    monitor-enter p3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->LAST_HANDLED:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 334
    :try_start_8
    invoke-static {p0, p2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->displayFolderName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 335
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->isArabic()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u062a\u0645 \u062d\u0641\u0638 \u0645\u062c\u0644\u062f \u0627\u0644\u062a\u0631\u062c\u0645\u0627\u062a: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subtitle folder saved: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    :goto_3
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->showToast(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Folder saved for "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->key:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", uri="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logInfo(Ljava/lang/String;)V

    .line 337
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->onModelChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 341
    goto :goto_7

    .line 333
    :catchall_2
    move-exception p1

    :try_start_9
    monitor-exit p3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 332
    :catchall_3
    move-exception p1

    :try_start_b
    monitor-exit p3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw p1

    .line 324
    :cond_7
    :goto_4
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->isArabic()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "\u062a\u0639\u0630\u0631 \u0631\u0628\u0637 \u0627\u0644\u0645\u062c\u0644\u062f \u0628\u0627\u0644\u0639\u0645\u0644 \u0627\u0644\u062d\u0627\u0644\u064a"

    goto :goto_5

    :cond_8
    const-string p1, "Could not link the folder to the current title"

    :goto_5
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->showToast(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 325
    return-void

    .line 338
    :catchall_4
    move-exception p1

    .line 339
    const-string p2, "Folder selection processing failed"

    invoke-static {p2, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 340
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->isArabic()Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "\u062a\u0639\u0630\u0631 \u062d\u0641\u0638 \u0645\u062c\u0644\u062f \u0627\u0644\u062a\u0631\u062c\u0645\u0627\u062a"

    goto :goto_6

    :cond_9
    const-string p1, "Could not save the subtitle folder"

    :goto_6
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->showToast(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    :goto_7
    return-void

    .line 299
    :cond_a
    :goto_8
    const-string p0, "Folder selection canceled"

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logInfo(Ljava/lang/String;)V

    .line 300
    return-void

    .line 297
    :catchall_5
    move-exception p0

    :try_start_d
    monitor-exit p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw p0

    .line 295
    :cond_b
    :goto_9
    return-void
.end method

.method public static onManualImport(Ljava/lang/Object;)V
    .locals 3

    .line 129
    if-nez p0, :cond_0

    return-void

    .line 130
    :cond_0
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->AUTO_ACTIVE:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->AUTO_ACTIVE:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 131
    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->MANUAL_ACTIVE:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->MANUAL_ACTIVE:Ljava/util/Map;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    const-string p0, "Manual subtitle import selected; automatic reset ownership released"

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logInfo(Ljava/lang/String;)V

    .line 133
    return-void

    .line 131
    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 130
    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private static onModelChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7

    .line 634
    if-eqz p0, :cond_14

    if-nez p1, :cond_0

    goto/16 :goto_7

    .line 635
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->makeWorkInfo(Ljava/lang/Object;)Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;

    move-result-object p1

    .line 636
    if-eqz p1, :cond_13

    iget-object v0, p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episode:Ljava/lang/String;

    if-nez v0, :cond_1

    goto/16 :goto_6

    .line 637
    :cond_1
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->clearStaleEpisodeState(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 638
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->LAST_HANDLED:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->LAST_HANDLED:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 640
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->season:Ljava/lang/String;

    invoke-static {v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->emptyDash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 641
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->treeKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->getStringPref(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 642
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->enabledKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->getBooleanPref(Ljava/lang/Object;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 643
    :goto_1
    sget-object v5, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->LAST_HANDLED:Ljava/util/Map;

    monitor-enter v5

    .line 644
    :try_start_1
    sget-object v6, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->LAST_HANDLED:Ljava/util/Map;

    invoke-interface {v6, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    monitor-exit v5

    return-void

    .line 645
    :cond_4
    sget-object v6, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->LAST_HANDLED:Ljava/util/Map;

    invoke-interface {v6, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_14

    .line 647
    if-nez v4, :cond_7

    .line 649
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->AUTO_ACTIVE:Ljava/util/Map;

    monitor-enter v0

    :try_start_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->AUTO_ACTIVE:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 650
    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->MANUAL_ACTIVE:Ljava/util/Map;

    monitor-enter v1

    :try_start_3
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->MANUAL_ACTIVE:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 651
    if-nez p1, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->resetSubtitleTrack(Ljava/lang/Object;)V

    .line 652
    :cond_6
    sget-object p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->AUTO_ACTIVE:Ljava/util/Map;

    monitor-enter p1

    :try_start_4
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->AUTO_ACTIVE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 653
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->MANUAL_ACTIVE:Ljava/util/Map;

    monitor-enter v0

    :try_start_5
    sget-object p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->MANUAL_ACTIVE:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 654
    invoke-static {p0, v3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->setSubtitleSyncEnabled(Ljava/lang/Object;Z)V

    .line 655
    return-void

    .line 653
    :catchall_1
    move-exception p0

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0

    .line 652
    :catchall_2
    move-exception p0

    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw p0

    .line 650
    :catchall_3
    move-exception p0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw p0

    .line 649
    :catchall_4
    move-exception p0

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw p0

    .line 658
    :cond_7
    invoke-static {p0, v3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->setSubtitleSyncEnabled(Ljava/lang/Object;Z)V

    .line 660
    :try_start_a
    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->filesForTree(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 661
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastIndexCountKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v4, v5}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->putStringPref(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object v4, p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episode:Ljava/lang/String;

    iget-object v5, p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->season:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->bestMatch(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;

    move-result-object v4

    .line 663
    if-nez v4, :cond_c

    .line 665
    sget-object v2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->AUTO_ACTIVE:Ljava/util/Map;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_e

    :try_start_b
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->AUTO_ACTIVE:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    .line 666
    :try_start_c
    sget-object v2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->MANUAL_ACTIVE:Ljava/util/Map;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_e

    :try_start_d
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v6, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->MANUAL_ACTIVE:Ljava/util/Map;

    invoke-interface {v6, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 667
    if-nez v4, :cond_8

    if-eqz v5, :cond_9

    :cond_8
    :try_start_e
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->resetSubtitleTrack(Ljava/lang/Object;)V

    .line 668
    :cond_9
    sget-object v2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->AUTO_ACTIVE:Ljava/util/Map;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    :try_start_f
    sget-object v4, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->AUTO_ACTIVE:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 669
    :try_start_10
    sget-object v2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->MANUAL_ACTIVE:Ljava/util/Map;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_e

    :try_start_11
    sget-object v4, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->MANUAL_ACTIVE:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    .line 670
    :try_start_12
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastFileKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->removePref(Ljava/lang/Object;Ljava/lang/String;)V

    .line 671
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastEpisodeKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->removePref(Ljava/lang/Object;Ljava/lang/String;)V

    .line 672
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastStatusKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no_match:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v2, v4}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->putStringPref(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    invoke-static {v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->scanReport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "episode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; indexed="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; examples="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v4, 0x4

    invoke-static {v0, v4}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->sampleNames(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 675
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; scan="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 676
    :cond_a
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastDiagnosticsKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->putStringPref(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No matching subtitle for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " episode "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; indexed="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; examples="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x8

    invoke-static {v0, v4}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->sampleNames(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "; scan="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_b
    const-string v1, ""

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logInfo(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_e

    .line 678
    return-void

    .line 669
    :catchall_5
    move-exception v0

    :try_start_13
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :try_start_14
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    .line 668
    :catchall_6
    move-exception v0

    :try_start_15
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    :try_start_16
    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    .line 666
    :catchall_7
    move-exception v0

    :try_start_17
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    :try_start_18
    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_e

    .line 665
    :catchall_8
    move-exception v0

    :try_start_19
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    :try_start_1a
    throw v0

    .line 680
    :cond_c
    iget-object v1, v4, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;->uri:Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->importSubtitle(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 681
    if-nez v1, :cond_d

    iget-object v5, v4, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;->alternateUri:Ljava/lang/Object;

    if-eqz v5, :cond_d

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Primary subtitle URI failed; retrying through filesystem URI for "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, v4, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;->name:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logInfo(Ljava/lang/String;)V

    .line 683
    iget-object v1, v4, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;->alternateUri:Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->importSubtitle(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 685
    :cond_d
    if-eqz v1, :cond_e

    .line 686
    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->AUTO_ACTIVE:Ljava/util/Map;

    monitor-enter v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    :try_start_1b
    sget-object v5, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->AUTO_ACTIVE:Ljava/util/Map;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v5, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    .line 687
    :try_start_1c
    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->MANUAL_ACTIVE:Ljava/util/Map;

    monitor-enter v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_e

    :try_start_1d
    sget-object v5, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->MANUAL_ACTIVE:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    .line 688
    :try_start_1e
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastFileKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, v4, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;->name:Ljava/lang/String;

    invoke-static {p0, v1, v5}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->putStringPref(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastEpisodeKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episode:Ljava/lang/String;

    invoke-static {p0, v1, v5}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->putStringPref(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastStatusKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applied:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v1, v5}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->putStringPref(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastDiagnosticsKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "matched="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; indexed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v1, v5}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->putStringPref(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->setSubtitleSyncEnabled(Ljava/lang/Object;Z)V

    .line 693
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Applied "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v4, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " episode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; indexed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logInfo(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_e

    goto/16 :goto_3

    .line 687
    :catchall_9
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    :try_start_20
    throw v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_e

    .line 686
    :catchall_a
    move-exception v0

    :try_start_21
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    :try_start_22
    throw v0

    .line 696
    :cond_e
    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->AUTO_ACTIVE:Ljava/util/Map;

    monitor-enter v1
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_e

    :try_start_23
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->AUTO_ACTIVE:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_d

    .line 697
    if-eqz v2, :cond_f

    :try_start_24
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->resetAutomaticSubtitle(Ljava/lang/Object;)V

    .line 698
    :cond_f
    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->AUTO_ACTIVE:Ljava/util/Map;

    monitor-enter v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_e

    :try_start_25
    sget-object v2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->AUTO_ACTIVE:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_c

    .line 699
    :try_start_26
    invoke-static {p0, v3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->setSubtitleSyncEnabled(Ljava/lang/Object;Z)V

    .line 700
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastFileKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->removePref(Ljava/lang/Object;Ljava/lang/String;)V

    .line 701
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastEpisodeKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->removePref(Ljava/lang/Object;Ljava/lang/String;)V

    .line 702
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastStatusKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "import_failed:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->putStringPref(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastDiagnosticsKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "matched="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v4, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;->name:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "; uri="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v4, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;->uri:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; indexed="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->putStringPref(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->LAST_HANDLED:Ljava/util/Map;

    monitor-enter v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_e

    :try_start_27
    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->LAST_HANDLED:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    .line 720
    :goto_3
    goto/16 :goto_5

    .line 705
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_b

    :try_start_28
    throw v1
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_e

    .line 698
    :catchall_c
    move-exception v0

    :try_start_29
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_c

    :try_start_2a
    throw v0
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_e

    .line 696
    :catchall_d
    move-exception v0

    :try_start_2b
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_d

    :try_start_2c
    throw v0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_e

    .line 707
    :catchall_e
    move-exception v0

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_10

    const-string v2, ""

    goto :goto_4

    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 710
    sget-object v2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->AUTO_ACTIVE:Ljava/util/Map;

    monitor-enter v2

    :try_start_2d
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v5, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->AUTO_ACTIVE:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_13

    .line 711
    sget-object v5, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->MANUAL_ACTIVE:Ljava/util/Map;

    monitor-enter v5

    :try_start_2e
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v6, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->MANUAL_ACTIVE:Ljava/util/Map;

    invoke-interface {v6, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v5
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_12

    .line 712
    if-nez v4, :cond_11

    if-eqz v2, :cond_12

    :cond_11
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->resetSubtitleTrack(Ljava/lang/Object;)V

    .line 713
    :cond_12
    sget-object v2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->AUTO_ACTIVE:Ljava/util/Map;

    monitor-enter v2

    :try_start_2f
    sget-object v4, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->AUTO_ACTIVE:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_11

    .line 714
    sget-object v4, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->MANUAL_ACTIVE:Ljava/util/Map;

    monitor-enter v4

    :try_start_30
    sget-object v2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->MANUAL_ACTIVE:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_10

    .line 715
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastStatusKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "scan_error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v2, v4}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->putStringPref(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastDiagnosticsKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->putStringPref(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->LAST_HANDLED:Ljava/util/Map;

    monitor-enter v1

    :try_start_31
    sget-object v2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->LAST_HANDLED:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_f

    .line 718
    invoke-static {p0, v3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->setSubtitleSyncEnabled(Ljava/lang/Object;Z)V

    .line 719
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Episode matching failed for "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v1, p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->key:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " episode "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episode:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 721
    :goto_5
    return-void

    .line 717
    :catchall_f
    move-exception p0

    :try_start_32
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_f

    throw p0

    .line 714
    :catchall_10
    move-exception p0

    :try_start_33
    monitor-exit v4
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_10

    throw p0

    .line 713
    :catchall_11
    move-exception p0

    :try_start_34
    monitor-exit v2
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_11

    throw p0

    .line 711
    :catchall_12
    move-exception p0

    :try_start_35
    monitor-exit v5
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_12

    throw p0

    .line 710
    :catchall_13
    move-exception p0

    :try_start_36
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_13

    throw p0

    .line 646
    :catchall_14
    move-exception p0

    :try_start_37
    monitor-exit v5
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_14

    throw p0

    .line 636
    :cond_13
    :goto_6
    return-void

    .line 634
    :cond_14
    :goto_7
    return-void
.end method

.method private static onObservedModelChanged(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 171
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->makeWorkInfo(Ljava/lang/Object;)Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episode:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    invoke-static {v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->episodeKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v0

    .line 178
    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->OBSERVED_EPISODES:Ljava/util/Map;

    monitor-enter v1

    .line 179
    :try_start_0
    sget-object v2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->OBSERVED_EPISODES:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 180
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->onModelChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->scheduleEpisodeTransitionRetries(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    :cond_1
    return-void

    .line 180
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 173
    :cond_2
    :goto_0
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->onModelChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 174
    return-void
.end method

.method public static onPlayerReady(Ljava/lang/Object;)V
    .locals 8

    .line 88
    if-nez p0, :cond_0

    return-void

    .line 89
    :cond_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->getCurrentModel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    if-nez v0, :cond_1

    return-void

    .line 91
    :cond_1
    invoke-static {v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->makeWorkInfo(Ljava/lang/Object;)Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_9

    iget-object v2, v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episode:Ljava/lang/String;

    if-nez v2, :cond_2

    goto/16 :goto_2

    .line 93
    :cond_2
    invoke-static {v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->treeKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->getStringPref(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 94
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->enabledKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->getBooleanPref(Ljava/lang/Object;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_1

    .line 98
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->key:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->season:Ljava/lang/String;

    invoke-static {v4}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->emptyDash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "|"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episode:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-static {v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastStatusKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-static {p0, v4, v5}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->getStringPref(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 100
    invoke-static {v4}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->statusEpisode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 102
    sget-object v6, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->LAST_HANDLED:Ljava/util/Map;

    monitor-enter v6

    :try_start_0
    sget-object v7, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->LAST_HANDLED:Ljava/util/Map;

    invoke-interface {v7, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 103
    iget-object v1, v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episode:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "applied:"

    .line 104
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "no_match:"

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    .line 105
    :cond_5
    :goto_0
    if-eqz v2, :cond_6

    if-nez v3, :cond_7

    .line 106
    :cond_6
    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->LAST_HANDLED:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    sget-object v2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->LAST_HANDLED:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->onModelChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    :cond_7
    return-void

    .line 106
    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 102
    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    .line 95
    :cond_8
    :goto_1
    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->onModelChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 96
    return-void

    .line 92
    :cond_9
    :goto_2
    return-void
.end method

.method public static openSettings(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 152
    if-nez p0, :cond_0

    return-void

    .line 153
    :cond_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->getCurrentModel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 154
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 155
    :goto_0
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->makeWorkInfo(Ljava/lang/Object;)Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episode:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_2

    .line 162
    :cond_2
    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->clearStaleEpisodeState(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 163
    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->LAST_HANDLED:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->LAST_HANDLED:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->onModelChanged(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 163
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 166
    :cond_3
    :goto_1
    invoke-static {v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->treeKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->getStringPref(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-static {p0, v0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->showManageDialog(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;Ljava/lang/String;)V

    .line 168
    return-void

    .line 157
    :cond_4
    :goto_2
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->isArabic()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "\u0625\u0639\u062f\u0627\u062f\u0627\u062a \u0645\u062a\u0627\u0628\u0639\u0629 \u0627\u0644\u062a\u0631\u062c\u0645\u0627\u062a"

    goto :goto_3

    :cond_5
    const-string p1, "Sequential subtitle settings"

    .line 158
    :goto_3
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->isArabic()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "\u062a\u0639\u0630\u0631 \u062a\u062d\u062f\u064a\u062f \u0627\u0644\u0639\u0645\u0644 \u0648\u0627\u0644\u062d\u0644\u0642\u0629 \u0627\u0644\u062d\u0627\u0644\u064a\u0629."

    goto :goto_4

    .line 159
    :cond_6
    const-string v0, "Could not identify the current title and episode."

    .line 157
    :goto_4
    invoke-static {p0, p1, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->showMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method private static openSubtitleSyncDialog(Ljava/lang/Object;)V
    .locals 8

    .line 591
    :try_start_0
    const-string v0, "p0"

    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 592
    if-eqz v0, :cond_0

    .line 593
    const-string v1, "com.shabakaty.cinemana.player.CinemanaPlayerControllerView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 594
    const-string v1, "com.shabakaty.cinemana.mod.SequentialSubtitleSyncHelper"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 595
    const-string v3, "init"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v2

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    const-string v3, "showSequentialDialog"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v2

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {v1, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    goto :goto_1

    .line 592
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Player controller is unavailable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    :catchall_0
    move-exception v0

    .line 598
    const-string v1, "Could not open subtitle sync dialog"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 599
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->isArabic()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u062a\u0639\u0630\u0631 \u0641\u062a\u062d \u0645\u0632\u0627\u0645\u0646\u0629 \u0627\u0644\u062a\u0631\u062c\u0645\u0629"

    goto :goto_0

    :cond_1
    const-string v0, "Could not open subtitle sync settings"

    :goto_0
    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->showToast(Ljava/lang/Object;Ljava/lang/String;)V

    .line 601
    :goto_1
    return-void
.end method

.method private static postSettingsActionsDialog(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)V
    .locals 8

    .line 422
    :try_start_0
    const-string v0, "android.os.Handler"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 423
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 424
    const-string v3, "postDelayed"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Runnable;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 425
    new-instance v3, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$6;

    invoke-direct {v3, p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$6;-><init>(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)V

    .line 427
    const-wide/16 v5, 0xb4

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    aput-object v5, v4, v7

    .line 425
    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 431
    goto :goto_0

    .line 428
    :catchall_0
    move-exception v0

    .line 429
    const-string v1, "Could not schedule subtitle settings controls"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 430
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->showSettingsActionsDialog(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)V

    .line 432
    :goto_0
    return-void
.end method

.method private static prefs(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1318
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v5, "cinemana_sequential_subtitles_v1"

    aput-object v5, v0, v3

    aput-object v2, v0, v4

    const-string v2, "getSharedPreferences"

    invoke-static {p0, v2, v1, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static putBooleanPref(Ljava/lang/Object;Ljava/lang/String;Z)V
    .locals 6

    .line 1303
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->prefs(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "edit"

    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1304
    const-string v0, "putBoolean"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v2

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v5

    invoke-static {p0, v0, v3, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1305
    const-string p2, "apply"

    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p2, v0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1306
    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not save preference "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1307
    :goto_0
    return-void
.end method

.method private static putStringPref(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1295
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->prefs(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "edit"

    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1296
    const-string v0, "putString"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v2

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v5

    invoke-static {p0, v0, v3, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    const-string p2, "apply"

    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, p2, v0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1298
    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not save preference "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1299
    :goto_0
    return-void
.end method

.method private static readString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1335
    :try_start_0
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const-string p0, ""

    return-object p0
.end method

.method private static removeImportedSubtitle(Ljava/lang/Object;)V
    .locals 9

    .line 809
    const-string v0, "type"

    const-string v1, "name"

    const-string v2, "subtitles"

    const-string v3, "file"

    :try_start_0
    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 810
    instance-of v5, v4, Ljava/util/List;

    if-nez v5, :cond_0

    return-void

    .line 811
    :cond_0
    check-cast v4, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 813
    :try_start_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 814
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 815
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 816
    invoke-static {v6, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 817
    invoke-static {v6, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 818
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 819
    :cond_2
    goto :goto_0

    .line 828
    :cond_3
    goto :goto_2

    .line 820
    :catchall_0
    move-exception v5

    .line 821
    :try_start_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 822
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 823
    invoke-static {v6, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 824
    invoke-static {v6, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 825
    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    :cond_4
    goto :goto_1

    .line 827
    :cond_5
    invoke-static {p0, v2, v5}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 829
    :goto_2
    goto :goto_3

    :catchall_1
    move-exception p0

    const-string v0, "Could not remove old imported subtitle track"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 830
    :goto_3
    return-void
.end method

.method private static removePref(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    .line 1311
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->prefs(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "edit"

    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1312
    const-string v0, "remove"

    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v3, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1313
    const-string v0, "apply"

    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1314
    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not remove preference "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1315
    :goto_0
    return-void
.end method

.method private static rescanCurrentFolder(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)V
    .locals 3

    .line 549
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->treeKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->getStringPref(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->FILE_CACHE:Ljava/util/Map;

    monitor-enter v1

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->FILE_CACHE:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 551
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->LAST_HANDLED:Ljava/util/Map;

    monitor-enter v0

    :try_start_1
    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->LAST_HANDLED:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastStatusKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->removePref(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastDiagnosticsKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->removePref(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->isArabic()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\u0623\u064f\u0639\u064a\u062f \u0641\u062d\u0635 \u0645\u062c\u0644\u062f \u0627\u0644\u062a\u0631\u062c\u0645\u0627\u062a"

    goto :goto_0

    :cond_1
    const-string p1, "Subtitle folder rescanned"

    :goto_0
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->showToast(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->onPlayerReady(Ljava/lang/Object;)V

    .line 556
    return-void

    .line 551
    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 550
    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private static resetAutomaticSubtitle(Ljava/lang/Object;)V
    .locals 3

    .line 768
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->AUTO_ACTIVE:Ljava/util/Map;

    monitor-enter v0

    .line 769
    :try_start_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->AUTO_ACTIVE:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 770
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->resetSubtitleTrack(Ljava/lang/Object;)V

    .line 772
    return-void

    .line 770
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static resetSubtitleTrack(Ljava/lang/Object;)V
    .locals 11

    .line 776
    const-string v0, "j"

    const-string v1, "a"

    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->getPlayerViewModel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 777
    if-nez v2, :cond_0

    return-void

    .line 778
    :cond_0
    invoke-static {v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->currentModelFromViewModel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 779
    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->removeImportedSubtitle(Ljava/lang/Object;)V

    .line 781
    :cond_1
    invoke-static {v2, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 782
    const-string v4, "f"

    invoke-static {v2, v4}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 783
    sget-object v5, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v4, v1, v5, v7}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 784
    const-string v5, "e"

    sget-object v7, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v3, v5, v7, v8}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 785
    sget-object v7, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v5, v1, v7, v8}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 786
    const-string v7, "g"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_2

    const-string v4, "ar"

    :cond_2
    new-array v10, v8, [Ljava/lang/Object;

    aput-object v4, v10, v6

    invoke-static {v5, v7, v9, v10}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    new-array v4, v8, [Ljava/lang/Class;

    const-string v7, "com.shabakaty.downloader.ep0$e"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v4, v6

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v5, v7, v6

    invoke-static {v3, v0, v4, v7}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    const-string v0, "k"

    invoke-static {v2, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 790
    const-string v3, "Y"

    sget-object v4, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v0, v3, v4, v5}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 791
    sget-object v4, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v1, v4, v5}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 792
    const-string v4, "r"

    sget-object v5, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v2, v4, v5, v7}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 793
    const-string v4, "c"

    new-array v5, v8, [Ljava/lang/Class;

    const-class v7, Ljava/util/List;

    aput-object v7, v5, v6

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v2, v7, v6

    invoke-static {v3, v4, v5, v7}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    sget-object v2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v1, v2, v4}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 795
    const-string v2, "o"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/util/List;

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v8

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v1, v5, v6

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v5, v8

    invoke-static {v0, v2, v4, v5}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 798
    :try_start_1
    const-string v0, "com.shabakaty.cinemana.features.SubtitleCompat131"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 799
    const-string v1, "cleanupOldImportsExcept"

    new-array v2, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p0, v1, v6

    const/4 p0, 0x0

    aput-object p0, v1, v8

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 800
    :catchall_0
    move-exception p0

    :goto_0
    nop

    .line 801
    :try_start_2
    const-string p0, "Restored player\'s preferred subtitle track"

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logInfo(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 804
    goto :goto_1

    .line 802
    :catchall_1
    move-exception p0

    .line 803
    const-string v0, "Could not restore preferred subtitle track"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 805
    :goto_1
    return-void
.end method

.method private static sampleNames(Ljava/util/List;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1064
    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1065
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1066
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1067
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    .line 1068
    if-lez v1, :cond_1

    const-string v2, " | "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;

    iget-object v2, v2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1071
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-le p0, p1, :cond_3

    const-string p0, " | ..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1064
    :cond_4
    :goto_1
    const-string p0, "<none>"

    return-object p0
.end method

.method private static scanDirectory(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ILjava/util/Set;Ljava/util/List;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 991
    move-object/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v0, p6

    move-object/from16 v12, p8

    const-string v13, "; parent="

    const-string v1, "mime_type"

    const-string v2, "display_name"

    const-string v3, "document_id"

    const-string v14, ""

    const-string v15, "getString"

    const-string v4, "getColumnIndex"

    const-string v9, "close"

    if-eqz v10, :cond_12

    const/4 v8, 0x4

    if-gt v11, v8, :cond_12

    move-object/from16 v7, p4

    invoke-interface {v7, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_12

    .line 992
    :cond_0
    nop

    .line 994
    :try_start_0
    const-string v8, "buildChildDocumentsUriUsingTree"

    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/Class;

    const/16 v18, 0x0

    aput-object p7, v5, v18

    const-class v19, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v19, v5, v6

    invoke-virtual {v0, v8, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    const/4 v8, 0x2

    :try_start_1
    new-array v6, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v6, v8

    const/4 v8, 0x1

    aput-object v10, v6, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_d

    .line 995
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v5, v8, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    .line 996
    :try_start_3
    const-string v6, "getContentResolver"

    sget-object v8, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_e

    move-object/from16 v21, v14

    const/4 v7, 0x0

    :try_start_4
    new-array v14, v7, [Ljava/lang/Object;

    move-object/from16 v7, p0

    invoke-static {v7, v6, v8, v14}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 997
    const/4 v8, 0x3

    new-array v14, v8, [Ljava/lang/String;

    const/16 v18, 0x0

    aput-object v3, v14, v18

    const/16 v19, 0x1

    aput-object v2, v14, v19

    const/16 v20, 0x2

    aput-object v1, v14, v20

    .line 998
    const-string v8, "query"

    const/4 v7, 0x5

    new-array v0, v7, [Ljava/lang/Class;

    const/16 v18, 0x0

    aput-object p7, v0, v18

    const-class v23, [Ljava/lang/String;

    const/16 v19, 0x1

    aput-object v23, v0, v19

    const-class v23, Ljava/lang/String;

    const/16 v20, 0x2

    aput-object v23, v0, v20

    const-class v23, [Ljava/lang/String;

    const/16 v22, 0x3

    aput-object v23, v0, v22

    const-class v23, Ljava/lang/String;

    const/16 v16, 0x4

    aput-object v23, v0, v16
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    :try_start_5
    new-array v7, v7, [Ljava/lang/Object;

    const/16 v18, 0x0

    aput-object v5, v7, v18

    const/4 v5, 0x1

    aput-object v14, v7, v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_a

    const/4 v5, 0x0

    const/4 v14, 0x2

    :try_start_6
    aput-object v5, v7, v14

    const/4 v14, 0x3

    aput-object v5, v7, v14

    const/4 v14, 0x4

    aput-object v5, v7, v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    :try_start_7
    invoke-static {v6, v8, v0, v7}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    .line 1000
    if-nez v14, :cond_2

    .line 1001
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "null cursor at depth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1002
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1003
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Folder query returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logInfo(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1040
    if-eqz v14, :cond_1

    :try_start_9
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v14, v9, v0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1004
    :cond_1
    :goto_0
    return-void

    .line 1035
    :catchall_1
    move-exception v0

    :goto_1
    move-object v2, v9

    move-object v6, v14

    const/4 v15, 0x0

    goto/16 :goto_e

    .line 1006
    :cond_2
    const/4 v0, 0x1

    :try_start_a
    new-array v5, v0, [Ljava/lang/Class;

    const-class v0, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/Object;

    aput-object v3, v7, v6

    invoke-static {v14, v4, v5, v7}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v3, -0x1

    invoke-static {v0, v3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->number(Ljava/lang/Object;I)I

    move-result v0

    .line 1007
    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v5, 0x1

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v2, v8, v7

    invoke-static {v14, v4, v6, v8}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->number(Ljava/lang/Object;I)I

    move-result v8

    .line 1008
    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/Object;

    aput-object v1, v7, v6

    invoke-static {v14, v4, v5, v7}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->number(Ljava/lang/Object;I)I

    move-result v22

    .line 1009
    if-ltz v0, :cond_d

    if-gez v8, :cond_3

    move/from16 v24, v8

    move-object v2, v9

    const/4 v15, 0x0

    goto/16 :goto_8

    .line 1015
    :cond_3
    const/4 v1, 0x0

    .line 1016
    :goto_2
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "moveToNext"

    sget-object v4, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v14, v3, v4, v6}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    if-eqz v2, :cond_b

    .line 1017
    add-int/lit8 v23, v1, 0x1

    .line 1018
    const/4 v1, 0x1

    :try_start_b
    new-array v2, v1, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-static {v14, v15, v2, v5}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1019
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    aput-object v1, v6, v4

    invoke-static {v14, v15, v2, v6}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1020
    if-ltz v22, :cond_4

    const/4 v2, 0x1

    :try_start_c
    new-array v4, v2, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v2, v7, v5

    invoke-static {v14, v15, v4, v7}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->string(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_3

    :cond_4
    move-object/from16 v2, v21

    .line 1021
    :goto_3
    :try_start_d
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    move/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v16, v15

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x2

    const/16 v19, 0x1

    const/16 v20, 0x4

    goto/16 :goto_5

    .line 1022
    :cond_5
    const-string v4, "vnd.android.document/directory"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    .line 1023
    invoke-static {v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->extensionOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1024
    if-nez v4, :cond_8

    :try_start_e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    if-nez v5, :cond_6

    const/4 v2, 0x4

    if-ge v11, v2, :cond_6

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    const/4 v6, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    goto :goto_4

    .line 1028
    :cond_6
    if-nez v5, :cond_7

    move/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v16, v15

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x2

    const/16 v19, 0x1

    const/16 v20, 0x4

    goto/16 :goto_5

    .line 1029
    :cond_7
    const-string v2, "buildDocumentUriUsingTree"

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object p7, v6, v4

    const-class v4, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v4, v6, v7

    move-object/from16 v7, p6

    invoke-virtual {v7, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v6, 0x2

    new-array v4, v6, [Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    const/16 v18, 0x0

    :try_start_f
    aput-object p1, v4, v18

    const/16 v19, 0x1

    aput-object v3, v4, v19

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1030
    new-instance v4, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;

    invoke-direct {v4, v1, v5, v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v5, p5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1031
    move-object/from16 v17, v3

    move/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v16, v15

    const/4 v15, 0x0

    const/16 v18, 0x2

    const/16 v20, 0x4

    goto :goto_5

    .line 1035
    :catchall_2
    move-exception v0

    const/16 v18, 0x0

    goto/16 :goto_1

    .line 1024
    :cond_8
    move-object/from16 v5, p5

    move-object/from16 v7, p6

    const/4 v6, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    .line 1025
    :goto_4
    const/4 v4, 0x4

    if-ge v11, v4, :cond_9

    add-int/lit8 v16, v11, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/16 v20, 0x4

    move/from16 v4, v16

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object/from16 v5, p4

    const/16 v18, 0x2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v24, v8

    move-object/from16 v8, p7

    move-object/from16 v25, v9

    move-object/from16 v9, p8

    :try_start_10
    invoke-static/range {v1 .. v9}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->scanDirectory(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;ILjava/util/Set;Ljava/util/List;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)V

    goto :goto_5

    :cond_9
    move/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v16, v15

    const/4 v15, 0x0

    const/16 v18, 0x2

    const/16 v20, 0x4

    goto :goto_5

    .line 1021
    :cond_a
    move/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v16, v15

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x2

    const/16 v19, 0x1

    const/16 v20, 0x4

    .line 1016
    :goto_5
    move-object/from16 v15, v16

    move/from16 v1, v23

    move/from16 v8, v24

    move-object/from16 v9, v25

    goto/16 :goto_2

    .line 1035
    :catchall_3
    move-exception v0

    move-object/from16 v25, v9

    const/4 v15, 0x0

    :goto_6
    move-object v6, v14

    move-object/from16 v2, v25

    goto/16 :goto_e

    .line 1032
    :cond_b
    move-object/from16 v25, v9

    const/4 v15, 0x0

    if-nez v11, :cond_c

    if-nez v1, :cond_c

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SAF root child query returned 0 rows for documentId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logInfo(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto :goto_7

    .line 1035
    :catchall_4
    move-exception v0

    goto :goto_6

    .line 1040
    :cond_c
    :goto_7
    if-eqz v14, :cond_10

    :try_start_11
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    new-array v1, v15, [Ljava/lang/Object;

    move-object/from16 v2, v25

    invoke-static {v14, v2, v0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto/16 :goto_10

    :catchall_5
    move-exception v0

    goto/16 :goto_10

    .line 1009
    :cond_d
    move/from16 v24, v8

    move-object v2, v9

    const/4 v15, 0x0

    .line 1010
    :goto_8
    :try_start_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missing document columns at depth="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "; idIndex="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; nameIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1011
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Folder cursor "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logInfo(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 1040
    if-eqz v14, :cond_e

    :try_start_13
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    new-array v1, v15, [Ljava/lang/Object;

    invoke-static {v14, v2, v0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    goto :goto_9

    :catchall_6
    move-exception v0

    .line 1013
    :cond_e
    :goto_9
    return-void

    .line 1035
    :catchall_7
    move-exception v0

    goto :goto_a

    :catchall_8
    move-exception v0

    move-object v2, v9

    const/4 v15, 0x0

    :goto_a
    move-object v6, v14

    goto :goto_e

    :catchall_9
    move-exception v0

    move-object/from16 v17, v5

    move-object v2, v9

    goto :goto_b

    :catchall_a
    move-exception v0

    move-object v2, v9

    goto :goto_c

    :catchall_b
    move-exception v0

    move-object v2, v9

    goto :goto_c

    :catchall_c
    move-exception v0

    move-object/from16 v17, v8

    move-object v2, v9

    move-object/from16 v21, v14

    :goto_b
    const/4 v15, 0x0

    goto :goto_d

    :catchall_d
    move-exception v0

    move-object v2, v9

    move-object/from16 v21, v14

    goto :goto_c

    :catchall_e
    move-exception v0

    move-object v2, v9

    move-object/from16 v21, v14

    :goto_c
    const/4 v15, 0x0

    const/16 v17, 0x0

    :goto_d
    move-object/from16 v6, v17

    .line 1036
    :goto_e
    :try_start_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_f

    move-object/from16 v14, v21

    goto :goto_f

    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_f
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1037
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "depth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1038
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed while reading selected subtitle folder at depth="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_f

    .line 1040
    if-eqz v6, :cond_10

    :try_start_15
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    new-array v1, v15, [Ljava/lang/Object;

    invoke-static {v6, v2, v0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    .line 1042
    :cond_10
    :goto_10
    return-void

    .line 1040
    :catchall_f
    move-exception v0

    move-object v1, v0

    if-eqz v6, :cond_11

    :try_start_16
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    new-array v3, v15, [Ljava/lang/Object;

    invoke-static {v6, v2, v0, v3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_10

    goto :goto_11

    :catchall_10
    move-exception v0

    .line 1041
    :cond_11
    :goto_11
    throw v1

    .line 991
    :cond_12
    :goto_12
    return-void
.end method

.method private static scanExternalFilesystemFallback(Ljava/lang/String;Ljava/util/List;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 877
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->filesystemPathsForDocumentId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 878
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "filesystem fallback unavailable: unsupported document id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v11, p0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 879
    :cond_0
    move-object/from16 v11, p0

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 880
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v13, "; "

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljava/lang/String;

    .line 881
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 882
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 883
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (not found)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 884
    goto :goto_0

    .line 886
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_2

    .line 887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (not a directory)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 888
    goto :goto_0

    .line 890
    :cond_2
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 891
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 892
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v16

    .line 893
    const/4 v5, 0x0

    move-object v1, v2

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object v10, v15

    invoke-static/range {v1 .. v10}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->scanFilesystemDirectory(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/Object;ILjava/util/Set;Ljava/util/List;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)V

    .line 894
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v1, v1, v16

    .line 895
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filesystem fallback path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; indexed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logInfo(Ljava/lang/String;)V

    .line 896
    if-lez v1, :cond_3

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAF indexed 0; filesystem fallback indexed="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 899
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (0 supported files"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, ""

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v15}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->joinErrors(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 900
    goto/16 :goto_0

    .line 901
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SAF indexed 0; filesystem fallback found 0 files"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 902
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 903
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_6

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 904
    :cond_6
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_7

    const-string v1, "; ..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static scanFilesystemDirectory(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/Object;ILjava/util/Set;Ljava/util/List;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;",
            ">;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 934
    move-object/from16 v1, p0

    move-object/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    const-string v11, "/"

    const-string v16, ""

    if-eqz v1, :cond_e

    const/4 v0, 0x4

    if-le v13, v0, :cond_0

    goto/16 :goto_9

    .line 936
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 937
    move-object/from16 v10, p5

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 938
    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    .line 939
    if-nez v13, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not a directory: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 940
    :cond_2
    return-void

    .line 942
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 943
    if-nez v9, :cond_4

    .line 944
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listFiles returned null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; readable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canRead()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 945
    return-void

    .line 947
    :cond_4
    if-nez v13, :cond_5

    array-length v0, v9

    if-nez v0, :cond_5

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "root directory returned 0 filesystem entries; readable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canRead()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 950
    :cond_5
    new-instance v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$14;

    invoke-direct {v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$14;-><init>()V

    invoke-static {v9, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 953
    array-length v8, v9

    const/16 v17, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_c

    aget-object v2, v9, v7

    .line 954
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    .line 955
    add-int/lit8 v6, v13, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v18, v7

    move-object/from16 v7, p5

    move/from16 v19, v8

    move-object/from16 v8, p6

    move-object/from16 v20, v9

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object v13, v11

    move-object/from16 v11, p9

    invoke-static/range {v2 .. v11}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->scanFilesystemDirectory(Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/Object;ILjava/util/Set;Ljava/util/List;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)V

    .line 956
    move-object/from16 v2, p6

    move-object/from16 v10, p7

    goto/16 :goto_6

    .line 958
    :cond_6
    move/from16 v18, v7

    move/from16 v19, v8

    move-object/from16 v20, v9

    move-object v13, v11

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->extensionOf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 959
    if-nez v4, :cond_7

    move-object/from16 v2, p6

    move-object/from16 v10, p7

    goto/16 :goto_6

    .line 960
    :cond_7
    const-string v0, "fromFile"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/io/File;

    aput-object v6, v5, v17

    invoke-virtual {v14, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v5, v3, [Ljava/lang/Object;

    aput-object v2, v5, v17

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 962
    nop

    .line 964
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 965
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    .line 966
    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 967
    :goto_1
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 968
    :cond_9
    sget-char v7, Ljava/io/File;->separatorChar:C

    const/16 v8, 0x2f

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 969
    nop

    .line 970
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    move-object/from16 v11, v16

    goto :goto_2

    :cond_a
    move-object v11, v13

    :goto_2
    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_b
    move-object v0, v12

    .line 971
    :goto_3
    const-string v7, "buildDocumentUriUsingTree"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Class;

    aput-object v14, v9, v17

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v10, p7

    :try_start_2
    invoke-virtual {v10, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p3, v8, v17

    aput-object v0, v8, v3

    .line 972
    invoke-virtual {v7, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 973
    nop

    .line 978
    move-object v6, v5

    move-object v5, v0

    goto :goto_5

    .line 974
    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v10, p7

    .line 976
    :goto_4
    nop

    .line 977
    :try_start_3
    const-string v0, "could not rebuild document URI; using filesystem URI"

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 979
    :goto_5
    new-instance v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v4, v5, v6}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$SubtitleFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v2, p6

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 953
    :goto_6
    add-int/lit8 v7, v18, 0x1

    move-object/from16 v10, p5

    move-object v11, v13

    move/from16 v8, v19

    move-object/from16 v9, v20

    move/from16 v13, p4

    goto/16 :goto_0

    .line 985
    :cond_c
    goto :goto_8

    .line 981
    :catchall_2
    move-exception v0

    .line 982
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_d

    goto :goto_7

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    :goto_7
    move-object/from16 v3, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 983
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filesystem scan: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 984
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filesystem subtitle scan failed at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 986
    :goto_8
    return-void

    .line 934
    :cond_e
    :goto_9
    return-void
.end method

.method private static scanReport(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1045
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->SCAN_REPORTS:Ljava/util/Map;

    monitor-enter v0

    .line 1046
    :try_start_0
    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->SCAN_REPORTS:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1047
    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    monitor-exit v0

    return-object p0

    .line 1048
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static scheduleEpisodeRetry(Ljava/lang/Object;Ljava/lang/String;J)V
    .locals 8

    .line 275
    :try_start_0
    const-string v0, "android.os.Handler"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 276
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 277
    const-string v3, "postDelayed"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Runnable;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 278
    new-instance v3, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$4;

    invoke-direct {v3, p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$4;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    aput-object v3, p1, v1

    aput-object p0, p1, v7

    .line 278
    invoke-virtual {v0, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "Could not schedule episode subtitle refresh"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    :goto_0
    return-void
.end method

.method private static scheduleEpisodeTransitionRetries(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 264
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->RETRYING_EPISODES:Ljava/util/Map;

    monitor-enter v0

    .line 265
    :try_start_0
    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->RETRYING_EPISODES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 266
    :cond_0
    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->RETRYING_EPISODES:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    const-wide/16 v0, 0x12c

    invoke-static {p0, p1, v0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->scheduleEpisodeRetry(Ljava/lang/Object;Ljava/lang/String;J)V

    .line 269
    const-wide/16 v0, 0x384

    invoke-static {p0, p1, v0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->scheduleEpisodeRetry(Ljava/lang/Object;Ljava/lang/String;J)V

    .line 270
    const-wide/16 v0, 0x6d6

    invoke-static {p0, p1, v0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->scheduleEpisodeRetry(Ljava/lang/Object;Ljava/lang/String;J)V

    .line 271
    return-void

    .line 267
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static scheduleStartupRetry(Ljava/lang/Object;J)V
    .locals 8

    .line 113
    :try_start_0
    const-string v0, "android.os.Handler"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 114
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 115
    const-string v3, "postDelayed"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Runnable;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 116
    new-instance v3, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$2;

    invoke-direct {v3, p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$2;-><init>(Ljava/lang/Object;)V

    .line 121
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    aput-object v3, p1, v1

    aput-object p0, p1, v7

    .line 116
    invoke-virtual {v0, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    goto :goto_0

    .line 122
    :catchall_0
    move-exception p0

    .line 123
    const-string p1, "Could not schedule startup subtitle retry"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    :goto_0
    return-void
.end method

.method private static seasonMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1116
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1117
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(?iu)(?:^|[^\\p{L}])s0*([0-9\u0660-\u0669\u06f0-\u06f9]{1,3})[ ._-]*e0*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, "(?:[^0-9\u0660-\u0669\u06f0-\u06f9]|$)"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 1118
    invoke-virtual {p2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 1119
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1120
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->canonicalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x2d

    return p0

    .line 1121
    :cond_1
    const/16 p0, -0x5a

    return p0

    .line 1123
    :cond_2
    return v0

    .line 1116
    :cond_3
    :goto_0
    return v0
.end method

.method public static selectFolder(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 137
    if-nez p0, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->getCurrentModel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 139
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 140
    :goto_0
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->makeWorkInfo(Ljava/lang/Object;)Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;

    move-result-object p1

    .line 141
    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episode:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_1

    .line 147
    :cond_2
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->startTreePicker(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)V

    .line 148
    return-void

    .line 142
    :cond_3
    :goto_1
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->isArabic()Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "\u0645\u062a\u0627\u0628\u0639\u0629 \u0627\u0644\u062a\u0631\u062c\u0645\u0627\u062a"

    goto :goto_2

    :cond_4
    const-string p1, "Sequential subtitles"

    .line 143
    :goto_2
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->isArabic()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "\u062a\u0639\u0630\u0631 \u062a\u062d\u062f\u064a\u062f \u0631\u0642\u0645 \u0627\u0644\u062d\u0644\u0642\u0629 \u0627\u0644\u062d\u0627\u0644\u064a\u0629. \u0627\u0641\u062a\u062d \u0627\u0644\u062e\u064a\u0627\u0631 \u0645\u0646 \u062d\u0644\u0642\u0629 \u0645\u0633\u0644\u0633\u0644."

    goto :goto_3

    .line 144
    :cond_5
    const-string v0, "The current episode could not be identified. Open this option from a series episode."

    .line 142
    :goto_3
    invoke-static {p0, p1, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->showMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method private static seriesLikeTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1195
    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1196
    :cond_0
    const-string v0, "(?iu)(?:episode|episodes|ep|\u0627\u0644\u062d\u0644\u0642\u0629|\u062d\u0644\u0642\u0629)\\s*[._ -]*[0-9\u0660-\u0669\u06f0-\u06f9]+"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1197
    const-string v0, "(?iu)\\bs[0-9\u0660-\u0669\u06f0-\u06f9]{1,3}[ ._-]*e[0-9\u0660-\u0669\u06f0-\u06f9]{1,4}\\b"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1198
    const-string v0, "[0-9\u0660-\u0669\u06f0-\u06f9]+"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1199
    const-string v0, "[\\p{Punct}\\p{Z}]+"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static setBuilderText(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1268
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v3

    invoke-static {p0, p1, v1, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    return-void
.end method

.method private static setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1352
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1353
    :goto_0
    if-eqz v0, :cond_1

    .line 1355
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1356
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1357
    :cond_0
    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1358
    return-void

    .line 1359
    :catch_0
    move-exception v1

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1361
    :cond_1
    new-instance p0, Ljava/lang/NoSuchFieldException;

    invoke-direct {p0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static setSubtitleSyncEnabled(Ljava/lang/Object;Z)V
    .locals 7

    .line 560
    :try_start_0
    const-string v0, "com.shabakaty.cinemana.mod.SequentialSubtitleSyncHelper"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 561
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 562
    const-string v4, "p0"

    sget-object v5, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {p0, v4, v5, v6}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 563
    if-eqz p0, :cond_0

    .line 564
    const-string v4, "init"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p0, v5, v3

    invoke-virtual {v4, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    :cond_0
    const-string p0, "setAutoEnabled"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v3

    invoke-virtual {v0, p0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    goto :goto_0

    .line 568
    :catchall_0
    move-exception p0

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not update automatic subtitle sync state to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 571
    :goto_0
    return-void
.end method

.method private static showManageDialog(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;Ljava/lang/String;)V
    .locals 18

    .line 347
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-eqz v3, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 348
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->enabledKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v6}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->getBooleanPref(Ljava/lang/Object;Ljava/lang/String;Z)Z

    move-result v7

    .line 349
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastFileKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v8, ""

    invoke-static {v1, v0, v8}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->getStringPref(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 350
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastEpisodeKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v8}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->getStringPref(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 351
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastStatusKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v8}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->getStringPref(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 352
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastDiagnosticsKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v8}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->getStringPref(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 353
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    nop

    .line 355
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastIndexCountKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v14, "-1"

    invoke-static {v1, v0, v14}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->getStringPref(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    goto :goto_1

    :catchall_0
    move-exception v0

    const/4 v0, -0x1

    .line 357
    :goto_1
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->isArabic()Z

    move-result v14

    const-string v15, "scan_error:"

    const-string v5, ")\n"

    const-string v4, "import_failed:"

    move-object/from16 v16, v8

    const-string v8, "no_match:"

    move-object/from16 v17, v15

    if-eqz v14, :cond_c

    .line 358
    const-string v14, "\u0627\u0644\u0639\u0645\u0644: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->title:Ljava/lang/String;

    invoke-static {v15}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->emptyDash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    const-string v14, "\u0627\u0644\u062d\u0644\u0642\u0629 \u0627\u0644\u062d\u0627\u0644\u064a\u0629: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episodeRaw:Ljava/lang/String;

    invoke-static {v15}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->emptyDash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    const-string v14, "\u0627\u0644\u0645\u062c\u0644\u062f: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-eqz v6, :cond_1

    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->displayFolderName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->emptyDash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_1
    const-string v3, "\u0644\u0645 \u064a\u062a\u0645 \u0627\u062e\u062a\u064a\u0627\u0631 \u0645\u062c\u0644\u062f"

    :goto_2
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v14, 0xa

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    const-string v3, "\u0627\u0644\u062d\u0627\u0644\u0629: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v6, :cond_2

    const-string v14, "\u0628\u0627\u0646\u062a\u0638\u0627\u0631 \u0627\u062e\u062a\u064a\u0627\u0631 \u0645\u062c\u0644\u062f"

    goto :goto_3

    :cond_2
    if-eqz v7, :cond_3

    const-string v14, "\u0627\u0644\u0645\u062a\u0627\u0628\u0639\u0629 \u0645\u0641\u0639\u0651\u0644\u0629"

    goto :goto_3

    :cond_3
    const-string v14, "\u0627\u0644\u0645\u062a\u0627\u0628\u0639\u0629 \u0645\u062a\u0648\u0642\u0641\u0629"

    :goto_3
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v14, 0xa

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    const-string v3, "\u0645\u0632\u0627\u0645\u0646\u0629 \u0645\u062a\u0627\u0628\u0639\u0629 \u0627\u0644\u062a\u0631\u062c\u0645\u0627\u062a: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v7, :cond_4

    if-eqz v6, :cond_4

    const-string v7, "\u062a\u064f\u0637\u0628\u0651\u0642 \u0639\u0646\u062f \u062a\u0634\u063a\u064a\u0644 \u062a\u0631\u062c\u0645\u0629 \u062a\u0644\u0642\u0627\u0626\u064a\u0629"

    goto :goto_4

    :cond_4
    const-string v7, "\u063a\u064a\u0631 \u0641\u0639\u0651\u0627\u0644\u0629 \u062d\u0627\u0644\u064a\u064b\u0627"

    :goto_4
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " (\u0627\u0644\u062a\u0648\u0642\u064a\u062a "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->syncOffsetLabel(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    if-ltz v0, :cond_5

    const-string v3, "\u0645\u0644\u0641\u0627\u062a \u0627\u0644\u062a\u0631\u062c\u0645\u0629 \u0627\u0644\u0645\u0643\u062a\u0634\u0641\u0629: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    :cond_5
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 365
    const-string v0, "\u0622\u062e\u0631 \u0645\u0644\u0641 \u0637\u064f\u0628\u0651\u0642: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    const-string v0, " (\u0627\u0644\u062d\u0644\u0642\u0629 "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    :cond_6
    const/16 v0, 0xa

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 369
    :cond_7
    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "\n\n\u062a\u0641\u0627\u0635\u064a\u0644 \u0627\u0644\u0641\u062d\u0635: "

    if-eqz v0, :cond_8

    .line 370
    const-string v0, "\u0644\u0645 \u062a\u0648\u062c\u062f \u062a\u0631\u062c\u0645\u0629 \u0645\u0637\u0627\u0628\u0642\u0629 \u0644\u0644\u062d\u0644\u0642\u0629 "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episode:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\u061b \u0633\u064a\u0628\u0642\u0649 \u0627\u0644\u0645\u0634\u063a\u0644 \u0639\u0644\u0649 \u062a\u0631\u062c\u0645\u062a\u0647 \u0627\u0644\u0645\u0639\u062a\u0627\u062f\u0629."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_19

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 372
    :cond_8
    invoke-virtual {v11, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 373
    const-string v0, "\u0639\u064f\u062b\u0631 \u0639\u0644\u0649 \u0645\u0644\u0641\u060c \u0644\u0643\u0646 \u062a\u0639\u0630\u0631 \u0627\u0633\u062a\u064a\u0631\u0627\u062f\u0647 \u0625\u0644\u0649 \u0627\u0644\u0645\u0634\u063a\u0644."

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_19

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 375
    :cond_9
    move-object/from16 v14, v17

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 376
    const-string v0, "\u062d\u062f\u062b \u062e\u0637\u0623 \u0623\u062b\u0646\u0627\u0621 \u0642\u0631\u0627\u0621\u0629 \u0627\u0644\u0645\u062c\u0644\u062f \u0623\u0648 \u0645\u0637\u0627\u0628\u0642\u0629 \u0627\u0644\u0645\u0644\u0641."

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_19

    const-string v0, "\n\n\u062a\u0641\u0627\u0635\u064a\u0644 \u0627\u0644\u062e\u0637\u0623: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 378
    :cond_a
    if-nez v6, :cond_b

    .line 379
    const-string v0, "\u0627\u062e\u062a\u0631 \u0645\u062c\u0644\u062f \u0627\u0644\u062a\u0631\u062c\u0645\u0627\u062a \u0645\u0646 \u0627\u0644\u0625\u0639\u062f\u0627\u062f\u0627\u062a \u0623\u0648\u0644\u0627\u064b."

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 380
    :cond_b
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_19

    .line 381
    const-string v0, "\u0633\u064a\u0628\u062d\u062b \u0627\u0644\u062a\u0637\u0628\u064a\u0642 \u062a\u0644\u0642\u0627\u0626\u064a\u064b\u0627 \u0639\u0646 \u0645\u0644\u0641 \u0627\u0644\u062d\u0644\u0642\u0629 \u0623\u062b\u0646\u0627\u0621 \u062a\u0634\u063a\u064a\u0644\u0647\u0627."

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    .line 384
    :cond_c
    move-object/from16 v14, v17

    const-string v15, "Title: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v14, v2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->title:Ljava/lang/String;

    invoke-static {v14}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->emptyDash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 385
    const-string v14, "Current episode: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episodeRaw:Ljava/lang/String;

    invoke-static {v15}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->emptyDash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 386
    const-string v14, "Folder: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-eqz v6, :cond_d

    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->displayFolderName(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->emptyDash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_d
    const-string v3, "No folder selected"

    :goto_5
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v14, 0xa

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 387
    const-string v3, "Status: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v6, :cond_e

    const-string v14, "Waiting for folder"

    goto :goto_6

    :cond_e
    if-eqz v7, :cond_f

    const-string v14, "Automatic matching enabled"

    goto :goto_6

    :cond_f
    const-string v14, "Automatic matching disabled"

    :goto_6
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v14, 0xa

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 388
    const-string v3, "Sequential subtitle sync: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v7, :cond_10

    if-eqz v6, :cond_10

    const-string v7, "applies to automatic subtitles"

    goto :goto_7

    :cond_10
    const-string v7, "currently inactive"

    :goto_7
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " (offset "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->syncOffsetLabel(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    if-ltz v0, :cond_11

    const-string v3, "Subtitle files discovered: "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    :cond_11
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13

    const-string v0, "Last applied file: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " (episode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_12
    move-object/from16 v3, v16

    :goto_8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    :cond_13
    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "No matching subtitle for episode "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episode:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "; the player\'s normal subtitles will remain active."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 392
    :cond_14
    invoke-virtual {v11, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "A matching file was found but could not be imported."

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 393
    :cond_15
    if-nez v6, :cond_16

    const-string v0, "Choose a subtitle folder from settings first."

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 394
    :cond_16
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_17

    const-string v0, "The app will look for the matching file when the episode plays."

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :cond_17
    :goto_9
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_19

    invoke-virtual {v11, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {v11, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    const-string v0, "\n\nScan details: "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    :cond_19
    :goto_a
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->newBuilder(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 399
    const-string v3, "setTitle"

    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->isArabic()Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string v4, "\u0645\u0639\u0644\u0648\u0645\u0627\u062a \u0645\u062a\u0627\u0628\u0639\u0629 \u0627\u0644\u062a\u0631\u062c\u0645\u0627\u062a"

    goto :goto_b

    :cond_1a
    const-string v4, "Sequential subtitle information"

    :goto_b
    invoke-static {v0, v3, v4}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->setBuilderText(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v3, "setMessage"

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->setBuilderText(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v3, "android.content.DialogInterface$OnClickListener"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 402
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v3, v6, v5

    new-instance v5, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$5;

    invoke-direct {v5, v1, v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$5;-><init>(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)V

    invoke-static {v4, v6, v5}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v2

    .line 408
    const-string v4, "setPositiveButton"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/CharSequence;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v3, v6, v7

    .line 409
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->isArabic()Z

    move-result v7

    if-eqz v7, :cond_1b

    const-string v7, "\u0627\u0644\u0625\u0639\u062f\u0627\u062f\u0627\u062a"

    goto :goto_c

    :cond_1b
    const-string v7, "Settings"

    :goto_c
    new-array v8, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    const/4 v7, 0x1

    aput-object v2, v8, v7

    .line 408
    invoke-static {v0, v4, v6, v8}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string v2, "setNegativeButton"

    new-array v4, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const/4 v6, 0x1

    aput-object v3, v4, v6

    .line 411
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->isArabic()Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string v3, "\u0625\u063a\u0644\u0627\u0642"

    goto :goto_d

    :cond_1c
    const-string v3, "Close"

    :goto_d
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x0

    const/4 v6, 0x1

    aput-object v3, v5, v6

    .line 410
    invoke-static {v0, v2, v4, v5}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string v2, "show"

    sget-object v3, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 416
    goto :goto_f

    .line 413
    :catchall_1
    move-exception v0

    .line 414
    const-string v2, "Could not show sequential subtitle information"

    invoke-static {v2, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 415
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->isArabic()Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "\u062a\u0639\u0630\u0631 \u0639\u0631\u0636 \u0645\u0639\u0644\u0648\u0645\u0627\u062a \u0645\u062a\u0627\u0628\u0639\u0629 \u0627\u0644\u062a\u0631\u062c\u0645\u0627\u062a"

    goto :goto_e

    :cond_1d
    const-string v0, "Could not display subtitle information"

    :goto_e
    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->showToast(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    :goto_f
    return-void
.end method

.method private static showMessage(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1253
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->newBuilder(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1254
    const-string v1, "setTitle"

    invoke-static {v0, v1, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->setBuilderText(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    const-string p1, "setMessage"

    invoke-static {v0, p1, p2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->setBuilderText(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    const-string p1, "setPositiveButton"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "android.content.DialogInterface$OnClickListener"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "OK"

    aput-object v3, v1, v4

    const/4 v3, 0x0

    aput-object v3, v1, v5

    invoke-static {v0, p1, v2, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    const-string p1, "show"

    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, p1, v1, v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1258
    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p0, p2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->showToast(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1259
    :goto_0
    return-void
.end method

.method private static showSettingsActionsDialog(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)V
    .locals 18

    .line 437
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->treeKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->getStringPref(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 438
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 439
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->enabledKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->getBooleanPref(Ljava/lang/Object;Ljava/lang/String;Z)Z

    move-result v2

    .line 440
    const-string v6, "android.content.Context"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 441
    const-string v7, "android.view.View"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 442
    const-string v8, "android.widget.LinearLayout"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 443
    new-array v9, v4, [Ljava/lang/Class;

    aput-object v6, v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v1, v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 444
    const-string v9, "setOrientation"

    new-array v10, v4, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-array v12, v4, [Ljava/lang/Object;

    aput-object v11, v12, v5

    invoke-static {v8, v9, v10, v12}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string v9, "setPadding"

    const/4 v10, 0x4

    new-array v11, v10, [Ljava/lang/Class;

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v5

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v11, v4

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x2

    aput-object v12, v11, v13

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x3

    aput-object v12, v11, v14

    .line 446
    const/16 v12, 0x18

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0xc

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v15, v10, v5

    aput-object v17, v10, v4

    aput-object v12, v10, v13

    aput-object v16, v10, v14

    .line 445
    invoke-static {v8, v9, v11, v10}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->isArabic()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 448
    const-string v9, "\u062a\u062d\u0643\u0645 \u0628\u0627\u0644\u0645\u062a\u0627\u0628\u0639\u0629 \u0627\u0644\u062a\u0644\u0642\u0627\u0626\u064a\u0629 \u0648\u0645\u0632\u0627\u0645\u0646\u0629 \u0645\u0644\u0641\u0627\u062a \u0627\u0644\u062a\u0631\u062c\u0645\u0629 \u0644\u0647\u0630\u0627 \u0627\u0644\u0639\u0645\u0644."

    goto :goto_1

    .line 449
    :cond_1
    const-string v9, "Control automatic matching and sync for this title."

    .line 447
    :goto_1
    invoke-static {v1, v8, v9}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->addSettingsHint(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    new-array v9, v4, [Ljava/lang/Object;

    .line 452
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->isArabic()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "\u062a\u063a\u064a\u064a\u0631 \u0645\u062c\u0644\u062f \u0627\u0644\u062a\u0631\u062c\u0645\u0627\u062a"

    goto :goto_2

    :cond_2
    const-string v10, "Change subtitle folder"

    :goto_2
    new-instance v11, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$7;

    invoke-direct {v11, v1, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$7;-><init>(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)V

    invoke-static {v1, v8, v10, v11, v9}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->addSettingsButton(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Runnable;[Ljava/lang/Object;)V

    .line 455
    if-eqz v2, :cond_4

    .line 456
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->isArabic()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "\u0625\u064a\u0642\u0627\u0641 \u0627\u0644\u0645\u062a\u0627\u0628\u0639\u0629 \u0627\u0644\u062a\u0644\u0642\u0627\u0626\u064a\u0629"

    goto :goto_3

    :cond_3
    const-string v2, "Disable automatic matching"

    goto :goto_3

    .line 457
    :cond_4
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->isArabic()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "\u062a\u0634\u063a\u064a\u0644 \u0627\u0644\u0645\u062a\u0627\u0628\u0639\u0629 \u0627\u0644\u062a\u0644\u0642\u0627\u0626\u064a\u0629"

    goto :goto_3

    :cond_5
    const-string v2, "Enable automatic matching"

    :goto_3
    new-instance v10, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$8;

    invoke-direct {v10, v1, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$8;-><init>(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)V

    .line 455
    invoke-static {v1, v8, v2, v10, v9}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->addSettingsButton(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Runnable;[Ljava/lang/Object;)V

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->isArabic()Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, "\u0645\u0632\u0627\u0645\u0646\u0629 \u0645\u062a\u0627\u0628\u0639\u0629 \u0627\u0644\u062a\u0631\u062c\u0645\u0627\u062a: "

    goto :goto_4

    :cond_6
    const-string v10, "Sequential subtitle sync: "

    :goto_4
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->syncOffsetLabel(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v10, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$9;

    invoke-direct {v10, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$9;-><init>(Ljava/lang/Object;)V

    invoke-static {v1, v8, v2, v10, v9}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->addSettingsButton(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Runnable;[Ljava/lang/Object;)V

    .line 463
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->isArabic()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "\u0625\u0639\u0627\u062f\u0629 \u0641\u062d\u0635 \u0645\u062c\u0644\u062f \u0627\u0644\u062a\u0631\u062c\u0645\u0627\u062a"

    goto :goto_5

    :cond_7
    const-string v2, "Rescan subtitle folder"

    :goto_5
    new-instance v10, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$10;

    invoke-direct {v10, v1, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$10;-><init>(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)V

    invoke-static {v1, v8, v2, v10, v9}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->addSettingsButton(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Runnable;[Ljava/lang/Object;)V

    .line 466
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->isArabic()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "\u0645\u0633\u062d \u0625\u0639\u062f\u0627\u062f\u0627\u062a \u0647\u0630\u0627 \u0627\u0644\u0639\u0645\u0644"

    goto :goto_6

    :cond_8
    const-string v2, "Clear settings for this title"

    :goto_6
    new-instance v10, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$11;

    invoke-direct {v10, v1, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$11;-><init>(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)V

    invoke-static {v1, v8, v2, v10, v9}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->addSettingsButton(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Runnable;[Ljava/lang/Object;)V

    .line 470
    const-string v0, "android.widget.ScrollView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 471
    new-array v2, v4, [Ljava/lang/Class;

    aput-object v6, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 472
    const-string v2, "addView"

    new-array v6, v4, [Ljava/lang/Class;

    aput-object v7, v6, v5

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v8, v10, v5

    invoke-static {v0, v2, v6, v10}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    invoke-static/range {p0 .. p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->newBuilder(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 474
    const-string v6, "setTitle"

    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->isArabic()Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "\u0625\u0639\u062f\u0627\u062f\u0627\u062a \u0645\u062a\u0627\u0628\u0639\u0629 \u0627\u0644\u062a\u0631\u062c\u0645\u0627\u062a"

    goto :goto_7

    :cond_9
    const-string v8, "Sequential subtitle settings"

    :goto_7
    invoke-static {v2, v6, v8}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->setBuilderText(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const-string v6, "setView"

    new-array v8, v4, [Ljava/lang/Class;

    aput-object v7, v8, v5

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v0, v7, v5

    invoke-static {v2, v6, v8, v7}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const-string v0, "android.content.DialogInterface$OnClickListener"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 477
    const-string v6, "setNegativeButton"

    new-array v7, v13, [Ljava/lang/Class;

    const-class v8, Ljava/lang/CharSequence;

    aput-object v8, v7, v5

    aput-object v0, v7, v4

    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->isArabic()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "\u0625\u063a\u0644\u0627\u0642"

    goto :goto_8

    :cond_a
    const-string v0, "Close"

    :goto_8
    new-array v8, v13, [Ljava/lang/Object;

    aput-object v0, v8, v5

    aput-object v3, v8, v4

    invoke-static {v2, v6, v7, v8}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-string v0, "show"

    sget-object v3, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v9, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    goto :goto_a

    .line 479
    :catchall_0
    move-exception v0

    .line 480
    const-string v2, "Could not show sequential subtitle controls"

    invoke-static {v2, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 481
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->isArabic()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "\u062a\u0639\u0630\u0631 \u0639\u0631\u0636 \u0623\u0632\u0631\u0627\u0631 \u0627\u0644\u0625\u0639\u062f\u0627\u062f\u0627\u062a"

    goto :goto_9

    :cond_b
    const-string v0, "Could not display settings controls"

    :goto_9
    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->showToast(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    :goto_a
    return-void
.end method

.method private static showToast(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 8

    .line 1273
    :try_start_0
    const-string v0, "android.widget.Toast"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1274
    const-string v1, "makeText"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-string v4, "android.content.Context"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/CharSequence;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1275
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    aput-object v1, v2, v7

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1276
    const-string v0, "show"

    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, v0, v1, v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1277
    goto :goto_0

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Toast failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1278
    :goto_0
    return-void
.end method

.method private static startEpisodePolling(Ljava/lang/Object;)V
    .locals 9

    .line 192
    if-nez p0, :cond_0

    return-void

    .line 193
    :cond_0
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->POLL_RUNNABLES:Ljava/util/Map;

    monitor-enter v0

    .line 194
    :try_start_0
    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->POLL_RUNNABLES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 196
    :cond_1
    :try_start_1
    const-string v1, "android.os.Handler"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 197
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 198
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Runnable;

    .line 199
    new-instance v6, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$3;

    invoke-direct {v6, p0, v1, v3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$3;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;)V

    aput-object v6, v5, v2

    .line 234
    sget-object v6, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->POLL_HANDLERS:Ljava/util/Map;

    invoke-interface {v6, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    sget-object v6, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->POLL_RUNNABLES:Ljava/util/Map;

    aget-object v7, v5, v2

    invoke-interface {v6, p0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string p0, "postDelayed"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Runnable;

    aput-object v8, v7, v2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    invoke-virtual {v1, p0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 237
    aget-object v1, v5, v2

    const-wide/16 v7, 0x1f4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v2

    aput-object v5, v6, v4

    invoke-virtual {p0, v3, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 238
    :catchall_0
    move-exception p0

    :try_start_2
    const-string v1, "Could not start episode transition polling"

    invoke-static {v1, p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    nop

    .line 239
    monitor-exit v0

    .line 240
    return-void

    .line 239
    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private static startTreePicker(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)V
    .locals 7

    .line 619
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 621
    :cond_0
    :try_start_0
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->PENDING_WORK:Ljava/util/Map;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->PENDING_WORK:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 622
    :try_start_2
    const-string p1, "android.content.Intent"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 623
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const-string v4, "android.intent.action.OPEN_DOCUMENT_TREE"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 624
    const-string v2, "addFlags"

    new-array v4, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v3

    const/16 v5, 0x41

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v5, v6, v3

    invoke-static {v1, v2, v4, v6}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    const-string v2, "startActivityForResult"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p1, v5, v3

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p1, v5, v0

    const/16 p1, 0x5213

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    aput-object p1, v4, v0

    invoke-static {p0, v2, v5, v4}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 630
    goto :goto_1

    .line 621
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 626
    :catchall_1
    move-exception p1

    .line 627
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->PENDING_WORK:Ljava/util/Map;

    monitor-enter v0

    :try_start_5
    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->PENDING_WORK:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 628
    const-string v0, "Could not launch folder picker"

    invoke-static {v0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 629
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->isArabic()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "\u062a\u0639\u0630\u0631 \u0641\u062a\u062d \u0627\u062e\u062a\u064a\u0627\u0631 \u0627\u0644\u0645\u062c\u0644\u062f"

    goto :goto_0

    :cond_1
    const-string p1, "Could not open folder picker"

    :goto_0
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->showToast(Ljava/lang/Object;Ljava/lang/String;)V

    .line 631
    :goto_1
    return-void

    .line 627
    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    .line 619
    :cond_2
    :goto_2
    return-void
.end method

.method private static statusEpisode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 741
    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 742
    :cond_0
    const/16 v1, 0x3a

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 743
    if-ltz v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 744
    :cond_1
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->canonicalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 745
    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p0

    :goto_0
    return-object v0

    .line 743
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static stopEpisodePolling(Ljava/lang/Object;)V
    .locals 6

    .line 243
    if-nez p0, :cond_0

    return-void

    .line 245
    :cond_0
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->POLL_RUNNABLES:Ljava/util/Map;

    monitor-enter v0

    .line 246
    :try_start_0
    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->POLL_RUNNABLES:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 247
    sget-object v2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->POLL_HANDLERS:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 248
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 249
    if-eqz p0, :cond_1

    if-eqz v1, :cond_1

    .line 250
    :try_start_1
    const-string v0, "removeCallbacks"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Runnable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-static {p0, v0, v3, v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    goto :goto_0

    :catchall_0
    move-exception p0

    const-string v0, "Could not stop episode polling"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    :cond_1
    :goto_0
    return-void

    .line 248
    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method private static string(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1331
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static syncOffsetLabel(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    .line 575
    const-string v0, "0.0s"

    :try_start_0
    const-string v1, "p0"

    sget-object v2, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->NO_TYPES:[Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2, v4}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 576
    if-nez p0, :cond_0

    return-object v0

    .line 577
    :cond_0
    const-string v1, "com.shabakaty.cinemana.mod.SequentialSubtitleSyncHelper"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 578
    const-string v2, "init"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v5, v3

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    const/4 p0, 0x0

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    const-string v2, "getSequentialTenths"

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->number(Ljava/lang/Object;I)I

    move-result p0

    .line 580
    if-gez p0, :cond_1

    const-string v1, "-"

    goto :goto_0

    :cond_1
    const-string v1, "+"

    .line 581
    :goto_0
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .line 582
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-int/lit8 v2, p0, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    rem-int/lit8 p0, p0, 0xa

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "s"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 583
    :catchall_0
    move-exception p0

    .line 584
    const-string v1, "Could not read subtitle sync setting"

    invoke-static {v1, p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 585
    return-object v0
.end method

.method private static toggleSequentialMatching(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)V
    .locals 4

    .line 519
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->treeKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->getStringPref(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 520
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 521
    :goto_0
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->enabledKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->getBooleanPref(Ljava/lang/Object;Ljava/lang/String;Z)Z

    move-result v3

    .line 522
    xor-int/2addr v3, v1

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 523
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->enabledKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->putBooleanPref(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 524
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->startTreePicker(Ljava/lang/Object;Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)V

    .line 525
    return-void

    .line 527
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->enabledKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->putBooleanPref(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 528
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->LAST_HANDLED:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->LAST_HANDLED:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 529
    if-eqz v3, :cond_4

    .line 530
    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->setSubtitleSyncEnabled(Ljava/lang/Object;Z)V

    .line 531
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->isArabic()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "\u062a\u0645 \u062a\u0641\u0639\u064a\u0644 \u0627\u0644\u0645\u062a\u0627\u0628\u0639\u0629 \u0627\u0644\u062a\u0644\u0642\u0627\u0626\u064a\u0629"

    goto :goto_1

    :cond_2
    const-string p1, "Automatic matching enabled"

    :goto_1
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->showToast(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->getCurrentModel(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 533
    if-eqz p1, :cond_3

    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->onPlayerReady(Ljava/lang/Object;)V

    .line 534
    :cond_3
    goto :goto_3

    .line 535
    :cond_4
    invoke-static {p0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->resetAutomaticSubtitle(Ljava/lang/Object;)V

    .line 536
    sget-object v1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->AUTO_ACTIVE:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->AUTO_ACTIVE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 539
    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->setSubtitleSyncEnabled(Ljava/lang/Object;Z)V

    .line 540
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastFileKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->removePref(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastEpisodeKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->removePref(Ljava/lang/Object;Ljava/lang/String;)V

    .line 542
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastStatusKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->episode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->putStringPref(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-static {p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->lastDiagnosticsKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->removePref(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    invoke-static {}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->isArabic()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "\u062a\u0645 \u062a\u0639\u0637\u064a\u0644 \u0627\u0644\u0645\u062a\u0627\u0628\u0639\u0629 \u0627\u0644\u062a\u0644\u0642\u0627\u0626\u064a\u0629"

    goto :goto_2

    :cond_5
    const-string p1, "Automatic matching disabled"

    :goto_2
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager;->showToast(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    :goto_3
    return-void

    .line 536
    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 528
    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private static treeKey(Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;)Ljava/lang/String;
    .locals 2

    .line 1226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tree:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/shabakaty/cinemana/features/SequentialSubtitleManager$WorkInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
