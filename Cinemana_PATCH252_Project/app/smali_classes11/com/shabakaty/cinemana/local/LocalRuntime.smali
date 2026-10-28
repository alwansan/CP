.class public final Lcom/shabakaty/cinemana/local/LocalRuntime;
.super Ljava/lang/Object;
.source "LocalRuntime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle;,
        Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow;,
        Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle;,
        Lcom/shabakaty/cinemana/local/LocalRuntime$Cancel;
    }
.end annotation


# static fields
.field static final INTERVAL:J = 0x1499700L

.field public static final IO:Ljava/util/concurrent/ScheduledExecutorService;

.field private static final JSON:Lcom/shabakaty/downloader/lr1;

.field private static final MODELS:Ljava/lang/String; = "com.shabakaty.cinemana.domain.models.remote."

.field static final NETWORK:Ljava/util/concurrent/ExecutorService;

.field static volatile api:Ljava/lang/Object;

.field static volatile app:Landroid/content/Context;

.field private static final cache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile lastMigrationAttempt:J

.field private static final pendingProgress:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final progressScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field static volatile scanCancelled:Z

.field private static final scanning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field static volatile store:Lcom/shabakaty/cinemana/local/LocalAccountStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->IO:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->NETWORK:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->scanning:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->pendingProgress:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->progressScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/shabakaty/downloader/lr1;

    invoke-direct {v0}, Lcom/shabakaty/downloader/lr1;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->JSON:Lcom/shabakaty/downloader/lr1;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->cache:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->ensureLegacy()V

    return-void
.end method

.method static synthetic access$100()Lcom/shabakaty/downloader/lr1;
    .locals 1

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->JSON:Lcom/shabakaty/downloader/lr1;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->scanning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static avatar()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_7

    return-object v1

    :cond_7
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "data/local-account/avatar.jpg"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_22
    return-object v1
.end method

.method static cachedModel(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->values()[Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_28

    aget-object v3, v0, v2

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v4

    invoke-virtual {v4, v3, p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->find(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object v3

    if-eqz v3, :cond_25

    iget-object v4, v3, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->payload:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_25

    const-string p0, "VideoModelApi"

    iget-object v0, v3, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->payload:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->dto(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_28
    new-instance p0, Ljava/io/IOException;

    const-string v0, "no local metadata"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static capture(Ljava/lang/Object;)V
    .locals 10

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    sget-object v1, Lcom/shabakaty/cinemana/local/LocalRuntime;->JSON:Lcom/shabakaty/downloader/lr1;

    invoke-virtual {v1, p0}, Lcom/shabakaty/downloader/lr1;->i(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "nb"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "[A-Za-z0-9_-]{1,100}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a

    return-void

    :cond_1a
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/16 v2, 0x17

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "nb"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "ar_title"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-string v4, "en_title"

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const-string v4, "custom_ar_title"

    const/4 v6, 0x3

    aput-object v4, v3, v6

    const-string v4, "custom_en_title"

    const/4 v6, 0x4

    aput-object v4, v3, v6

    const-string v4, "kind"

    const/4 v6, 0x5

    aput-object v4, v3, v6

    const-string v4, "rootSeries"

    const/4 v6, 0x6

    aput-object v4, v3, v6

    const-string v4, "season"

    const/4 v6, 0x7

    aput-object v4, v3, v6

    const-string v4, "episodeNummer"

    const/16 v6, 0x8

    aput-object v4, v3, v6

    const-string v4, "episode_flag"

    const/16 v6, 0x9

    aput-object v4, v3, v6

    const-string v4, "imgObjUrl"

    const/16 v6, 0xa

    aput-object v4, v3, v6

    const-string v4, "imgThumbObjUrl"

    const/16 v6, 0xb

    aput-object v4, v3, v6

    const-string v4, "imgMediumThumbObjUrl"

    const/16 v6, 0xc

    aput-object v4, v3, v6

    const-string v4, "year"

    const/16 v6, 0xd

    aput-object v4, v3, v6

    const-string v4, "duration"

    const/16 v6, 0xe

    aput-object v4, v3, v6

    const-string v4, "publishDate"

    const/16 v6, 0xf

    aput-object v4, v3, v6

    const-string v4, "rate"

    const/16 v6, 0x10

    aput-object v4, v3, v6

    const-string v4, "stars"

    const/16 v6, 0x11

    aput-object v4, v3, v6

    const-string v4, "filmRating"

    const/16 v6, 0x12

    aput-object v4, v3, v6

    const-string v4, "seriesRating"

    const/16 v6, 0x13

    aput-object v4, v3, v6

    const-string v4, "finished"

    const/16 v6, 0x14

    aput-object v4, v3, v6

    const-string v4, "ar_content"

    const/16 v6, 0x15

    aput-object v4, v3, v6

    const-string v4, "en_content"

    const/16 v6, 0x16

    aput-object v4, v3, v6

    const/4 v4, 0x0

    :goto_a6
    if-ge v4, v2, :cond_cf

    aget-object v6, v3, v4

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_cc

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_c9

    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xfa0

    if-le v8, v9, :cond_c9

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_c9
    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_cc
    add-int/lit8 v4, v4, 0x1

    goto :goto_a6

    :cond_cf
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x4e20

    if-gt v1, v2, :cond_100

    sget-object v1, Lcom/shabakaty/cinemana/local/LocalRuntime;->cache:Ljava/util/LinkedHashMap;

    monitor-enter v1
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_de} :catch_108

    :try_start_de
    invoke-virtual {v1, p0, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_e1
    sget-object p0, Lcom/shabakaty/cinemana/local/LocalRuntime;->cache:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/16 v2, 0x40

    if-le v0, v2, :cond_fb

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e1

    :cond_fb
    monitor-exit v1

    goto :goto_10e

    :catchall_fd
    move-exception p0

    monitor-exit v1
    :try_end_ff
    .catchall {:try_start_de .. :try_end_ff} :catchall_fd

    :try_start_ff
    throw p0

    :cond_100
    new-instance p0, Ljava/io/IOException;

    const-string v0, "metadata limit"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_108} :catch_108

    :catch_108
    move-exception p0

    const-string v0, "metadata"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_10e
    return-void
.end method

.method static causeTypes(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_6
    if-eqz p0, :cond_24

    const/4 v2, 0x4

    if-ge v1, v2, :cond_24

    if-lez v1, :cond_12

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_6

    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static declared-synchronized data()Lcom/shabakaty/cinemana/local/LocalAccountStore;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/shabakaty/cinemana/local/LocalRuntime;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/shabakaty/cinemana/local/LocalRuntime;->store:Lcom/shabakaty/cinemana/local/LocalAccountStore;

    if-nez v1, :cond_30

    sget-object v1, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    if-eqz v1, :cond_28

    new-instance v1, Lcom/shabakaty/cinemana/local/LocalAccountStore;

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "data/local-account"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Lcom/shabakaty/cinemana/local/LocalRuntime$2;

    invoke-direct {v3}, Lcom/shabakaty/cinemana/local/LocalRuntime$2;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/shabakaty/cinemana/local/LocalAccountStore;-><init>(Ljava/io/File;Lcom/shabakaty/cinemana/local/LocalAccountStore$Events;)V

    sput-object v1, Lcom/shabakaty/cinemana/local/LocalRuntime;->store:Lcom/shabakaty/cinemana/local/LocalAccountStore;

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->updateProfile()V

    goto :goto_30

    :cond_28
    new-instance v1, Ljava/io/IOException;

    const-string v2, "local account not initialized"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_30
    :goto_30
    sget-object v1, Lcom/shabakaty/cinemana/local/LocalRuntime;->store:Lcom/shabakaty/cinemana/local/LocalAccountStore;
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_34

    monitor-exit v0

    return-object v1

    :catchall_34
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static decorate(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "local_account266"

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_11

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    const-string v1, "profile_login_linear"

    const-string v2, "login_qr_button"

    const-string v3, "profile_logout_item"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, v0, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda2;-><init>([Ljava/lang/String;Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v0, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda3;

    invoke-direct {v0, v2, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda3;-><init>(Landroid/view/View$OnLayoutChangeListener;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static deliver()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_16

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "notification_permission_missing"

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    return-void

    :cond_16
    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "local_episodes"

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_33

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v4, "\u062d\u0644\u0642\u0627\u062a \u062c\u062f\u064a\u062f\u0629"

    const/4 v5, 0x3

    invoke-direct {v1, v2, v4, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_33
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v1, v4, :cond_40

    invoke-virtual {v0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v1

    if-nez v1, :cond_40

    return-void

    :cond_40
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_4f

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v1

    if-nez v1, :cond_4f

    return-void

    :cond_4f
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->inbox()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_5d
    :goto_5d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_11d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "delivered_"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v7, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "0"

    invoke-virtual {v1, v8, v9}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->config(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_88

    goto :goto_5d

    :cond_88
    new-instance v9, Landroid/content/Intent;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "https://cinemana.shabakaty.cc/video/"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v7, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const-string v12, "android.intent.action.VIEW"

    invoke-direct {v9, v12, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object v11, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v11, 0x14000000

    invoke-virtual {v9, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v11, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    iget-object v12, v7, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v12

    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x17

    if-lt v13, v14, :cond_c2

    const/high16 v13, 0x4000000

    goto :goto_c3

    :cond_c2
    const/4 v13, 0x0

    :goto_c3
    const/high16 v14, 0x8000000

    or-int/2addr v13, v14

    invoke-static {v11, v12, v9, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v3, :cond_d6

    new-instance v11, Landroid/app/Notification$Builder;

    sget-object v12, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-direct {v11, v12, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_dd

    :cond_d6
    new-instance v11, Landroid/app/Notification$Builder;

    sget-object v12, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    :goto_dd
    const v12, 0x1080024

    invoke-virtual {v11, v12}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v12

    const-string v13, "\u062d\u0644\u0642\u0629 \u062c\u062f\u064a\u062f\u0629"

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    iget-object v13, v7, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->title:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v12

    invoke-virtual {v12, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v9

    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v12, "local_episode_"

    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v7, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x10a

    invoke-virtual {v11}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v11

    invoke-virtual {v0, v7, v9, v11}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    invoke-virtual {v1, v8, v10}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x5

    if-lt v6, v7, :cond_5d

    :cond_11d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifications_delivered count="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    return-void
.end method

.method static dto(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->JSON:Lcom/shabakaty/downloader/lr1;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.shabakaty.cinemana.domain.models.remote."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/shabakaty/downloader/lr1;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static dtoArray(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_20

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoModelApi"

    invoke-static {v3, v2}, Lcom/shabakaty/cinemana/local/LocalRuntime;->dto(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_20
    return-object v0
.end method

.method private static ensureLegacy()V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v0

    const-string v1, "legacy_seeded"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->config(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/shabakaty/cinemana/local/LocalRuntime;->lastMigrationAttempt:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v6, v2, v4

    if-gez v6, :cond_25

    return-void

    :cond_25
    sput-wide v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->lastMigrationAttempt:J

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->snapshotLegacy(Z)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_32

    :catch_2c
    move-exception v0

    const-string v1, "legacy_migration"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_32
    return-void
.end method

.method static episodes(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "episode_http status="

    new-instance v1, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://cinemana.shabakaty.cc/api/android/videoSeason/id/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 v1, 0x1f40

    :try_start_1d
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v2, "Accept"

    const-string v3, "application/json"

    invoke-virtual {p0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    const/16 v0, 0xc8

    if-ne v2, v0, :cond_bf

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b7

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "json"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b7

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_62
    .catchall {:try_start_1d .. :try_end_62} :catchall_c7

    const/16 v3, 0x2000

    :try_start_64
    new-array v3, v3, [B

    :goto_66
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_82

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    add-int/2addr v5, v4

    const/high16 v6, 0x200000

    if-gt v5, v6, :cond_7a

    invoke-virtual {v0, v3, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_66

    :cond_7a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "episode response limit"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_82
    .catchall {:try_start_64 .. :try_end_82} :catchall_ab

    :cond_82
    if-eqz v2, :cond_87

    :try_start_84
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_87
    new-instance v1, Lorg/json/JSONArray;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_9b
    .catchall {:try_start_84 .. :try_end_9b} :catchall_c7

    const/16 v2, 0x2710

    if-gt v0, v2, :cond_a3

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    :cond_a3
    :try_start_a3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "episode limit"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_ab
    .catchall {:try_start_a3 .. :try_end_ab} :catchall_c7

    :catchall_ab
    move-exception v0

    if-eqz v2, :cond_b6

    :try_start_ae
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_b2

    goto :goto_b6

    :catchall_b2
    move-exception v1

    :try_start_b3
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b6
    :goto_b6
    throw v0

    :cond_b7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "episode content type"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bf
    new-instance v0, Ljava/io/IOException;

    const-string v1, "episode http"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c7
    .catchall {:try_start_b3 .. :try_end_c7} :catchall_c7

    :catchall_c7
    move-exception v0

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
.end method

.method static failure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_failed type="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    return-void
.end method

.method static flushProgress()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    sget-object v1, Lcom/shabakaty/cinemana/local/LocalRuntime;->pendingProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/shabakaty/cinemana/local/LocalRuntime;->item(Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object v5

    new-instance v12, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    iget-object v7, v5, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    iget-object v8, v5, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->title:Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v11, v5, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->payload:Ljava/lang/String;

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_4b
    sget-object v3, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->PROGRESS:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7f

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->merge(Ljava/util/Map;)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_65
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v2, Lcom/shabakaty/cinemana/local/LocalRuntime;->pendingProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_65

    :cond_7f
    return-void
.end method

.method public static flushProgressAsync()V
    .locals 2

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->IO:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static hex([B)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_25

    aget-byte v4, p0, v3

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v2

    const-string v4, "%02x"

    invoke-static {v5, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static httpRequest(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "http_begin route="

    :try_start_2
    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->requestLabel(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1b

    :catch_1b
    :cond_1b
    return-void
.end method

.method public static httpResponse(Ljava/lang/Object;)V
    .locals 3

    const-string v0, "http_result route="

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->requestLabel(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " status="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3f} :catch_3f

    :catch_3f
    :cond_3f
    return-void
.end method

.method static importAccount(Ljava/io/InputStream;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Float"

    const-string v1, "Boolean"

    const-string v2, "Integer"

    const-string v3, "Long"

    const-string v4, "0"

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v6, 0x2000

    new-array v6, v6, [B

    move-object/from16 v7, p0

    :goto_15
    invoke-virtual {v7, v6}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    const/4 v10, 0x0

    if-eq v8, v9, :cond_32

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    add-int/2addr v9, v8

    const/high16 v11, 0x2000000

    if-gt v9, v11, :cond_2a

    invoke-virtual {v5, v6, v10, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_15

    :cond_2a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "archive limit"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    const-string v8, "account-restore-stage"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/shabakaty/cinemana/local/LocalRuntime;->removeStage(Ljava/io/File;)V

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-eqz v7, :cond_1e5

    :try_start_48
    new-instance v7, Lcom/shabakaty/cinemana/local/LocalAccountStore;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8}, Lcom/shabakaty/cinemana/local/LocalAccountStore;-><init>(Ljava/io/File;Lcom/shabakaty/cinemana/local/LocalAccountStore$Events;)V

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v7, v8}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->importZip(Ljava/io/InputStream;)V

    invoke-virtual {v7}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->avatar()[B

    move-result-object v8

    array-length v9, v8

    const/4 v11, 0x1

    if-lez v9, :cond_88

    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v11, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    array-length v12, v8

    invoke-static {v8, v10, v12, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v8, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v8, :cond_80

    iget v8, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-lez v8, :cond_80

    iget v8, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v12, 0x400

    if-gt v8, v12, :cond_80

    iget v8, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v8, v12, :cond_80

    goto :goto_88

    :cond_80
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid avatar"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_88
    :goto_88
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->values()[Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    move-result-object v8

    array-length v9, v8

    const/4 v12, 0x0

    :goto_8e
    if-ge v12, v9, :cond_1a1

    aget-object v14, v8, v12

    invoke-virtual {v7, v14}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->list(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_9a
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_197

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    check-cast v13, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    iget-object v11, v13, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->payload:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_18d

    new-instance v11, Lorg/json/JSONObject;

    iget-object v10, v13, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->payload:Ljava/lang/String;

    invoke-direct {v11, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v10, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->STATE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    if-ne v14, v10, :cond_172

    iget-object v10, v13, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    const-string v13, "settings"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e6

    invoke-virtual {v11}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    :goto_c9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_18d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v13, "(filter|app|subtitles)_[A-Za-z]+"

    invoke-virtual {v11, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_de

    goto :goto_c9

    :cond_de
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid settings"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e6
    const-string v10, "pref"

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v13, "ca1_continue106"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_105

    const-string v13, "ca1_episode_context107"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_fd

    goto :goto_105

    :cond_fd
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid preferences"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_105
    :goto_105
    const-string v10, "key"

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v10, "type"

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/String;

    const-string v18, "String"

    const/16 v17, 0x0

    aput-object v18, v13, v17

    const/16 v16, 0x1

    aput-object v3, v13, v16

    const/16 v18, 0x2

    aput-object v2, v13, v18

    const/16 v18, 0x3

    aput-object v1, v13, v18

    const/16 v18, 0x4

    aput-object v0, v13, v18

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16a

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_137
    .catchall {:try_start_48 .. :try_end_137} :catchall_1e0

    move-object/from16 v18, v3

    const-string v3, "value"

    if-eqz v13, :cond_140

    :try_start_13d
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    :cond_140
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_149

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    :cond_149
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_152

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    :cond_152
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15b

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    :cond_15b
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_162

    goto :goto_191

    :cond_162
    new-instance v0, Ljava/io/IOException;

    const-string v1, "missing preference"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unsupported preference type"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_172
    move-object/from16 v18, v3

    const/16 v17, 0x0

    iget-object v3, v13, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    const-string v10, "nb"

    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_185

    goto :goto_191

    :cond_185
    new-instance v0, Ljava/io/IOException;

    const-string v1, "metadata id mismatch"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18d
    move-object/from16 v18, v3

    const/16 v17, 0x0

    :goto_191
    move-object/from16 v3, v18

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_9a

    :cond_197
    move-object/from16 v18, v3

    const/16 v17, 0x0

    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_8e

    :cond_1a1
    const-string v0, "parental"

    invoke-virtual {v7, v0, v4}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->config(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "translation"

    invoke-virtual {v7, v1, v4}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->config(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ltz v0, :cond_1d8

    const/4 v2, 0x3

    if-gt v0, v2, :cond_1d8

    if-ltz v1, :cond_1d8

    const/4 v0, 0x1

    if-gt v1, v0, :cond_1d8

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->pendingProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->importZip(Ljava/io/InputStream;)V
    :try_end_1d4
    .catchall {:try_start_13d .. :try_end_1d4} :catchall_1e0

    invoke-static {v6}, Lcom/shabakaty/cinemana/local/LocalRuntime;->removeStage(Ljava/io/File;)V

    return-void

    :cond_1d8
    :try_start_1d8
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid filter"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e0
    .catchall {:try_start_1d8 .. :try_end_1e0} :catchall_1e0

    :catchall_1e0
    move-exception v0

    invoke-static {v6}, Lcom/shabakaty/cinemana/local/LocalRuntime;->removeStage(Ljava/io/File;)V

    throw v0

    :cond_1e5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "staging unavailable"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/shabakaty/cinemana/local/LocalRuntime;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_25

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    sget-object p0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/LocalAccountLog;->init(Landroid/content/Context;)V

    const-string p0, "build=PATCH267"

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    sget-object p0, Lcom/shabakaty/cinemana/local/LocalRuntime;->IO:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/shabakaty/cinemana/local/LocalRuntime$1;

    invoke-direct {v1}, Lcom/shabakaty/cinemana/local/LocalRuntime$1;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_25

    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static item(Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->cache:Ljava/util/LinkedHashMap;

    monitor-enter v0

    :try_start_3
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_69

    if-nez v7, :cond_2d

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->values()[Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_2d

    aget-object v3, v0, v2

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v4

    invoke-virtual {v4, v3, p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->find(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object v3

    if-eqz v3, :cond_2a

    iget-object v4, v3, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->payload:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2a

    return-object v3

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_2d
    if-nez v7, :cond_45

    new-instance v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u0639\u0645\u0644 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0

    :cond_45
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "ar_title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5e

    const-string v1, "en_title"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    goto :goto_5f

    :cond_5e
    move-object v4, v1

    :goto_5f
    new-instance v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    const-wide/16 v5, 0x0

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v0

    :catchall_69
    move-exception p0

    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw p0
.end method

.method static kind(Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->FAVORITE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    return-object p0

    :cond_b
    const-string v0, "2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCH_LATER:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    return-object p0

    :cond_16
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    sget-object p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCHED:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    return-object p0

    :cond_21
    new-instance p0, Ljava/io/IOException;

    const-string v0, "unsupported personal list"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$decorate$3([Ljava/lang/String;Landroid/content/Context;Landroid/view/View;Landroid/view/View;IIIIIIII)V
    .locals 0

    array-length p3, p0

    const/4 p4, 0x0

    :goto_2
    if-ge p4, p3, :cond_28

    aget-object p5, p0, p4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p6

    const-string p7, "id"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p6, p5, p7, p8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p5

    invoke-virtual {p2, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    if-eqz p5, :cond_25

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result p6

    const/16 p7, 0x8

    if-eq p6, p7, :cond_25

    invoke-virtual {p5, p7}, Landroid/view/View;->setVisibility(I)V

    :cond_25
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_28
    return-void
.end method

.method static synthetic lambda$decorate$4(Landroid/view/View$OnLayoutChangeListener;Landroid/view/View;)V
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-interface/range {v0 .. v9}, Landroid/view/View$OnLayoutChangeListener;->onLayoutChange(Landroid/view/View;IIIIIIII)V

    return-void
.end method

.method static synthetic lambda$flushProgressAsync$2()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->flushProgress()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_a

    :catch_4
    move-exception v0

    const-string v1, "progress"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_a
    return-void
.end method

.method static synthetic lambda$logout$0()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$progress$1()V
    .locals 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->flushProgress()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_c
    .catchall {:try_start_1 .. :try_end_4} :catchall_a

    :goto_4
    sget-object v1, Lcom/shabakaty/cinemana/local/LocalRuntime;->progressScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_13

    :catchall_a
    move-exception v1

    goto :goto_14

    :catch_c
    move-exception v1

    :try_start_d
    const-string v2, "progress"

    invoke-static {v2, v1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_a

    goto :goto_4

    :goto_13
    return-void

    :goto_14
    sget-object v2, Lcom/shabakaty/cinemana/local/LocalRuntime;->progressScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method

.method static local(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v0

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->ensureLegacy()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "api_local operation="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    const-string v1, "f"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d0

    const-string v1, "r"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d0

    const-string v1, "x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d0

    const-string v1, "E"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d0

    const-string v1, "l"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_a2

    aget-object p0, p1, v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCHED:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v0, v1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->list(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_56
    :goto_56
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    invoke-static {v1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->model(Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, v1, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7a

    const-string v3, "rootSeries"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    :cond_7a
    iget-object v1, v1, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_56

    :cond_80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "highlight_local id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->safeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " count="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    return-object p1

    :cond_a2
    const-string v1, "a"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "rating_"

    const/4 v4, 0x1

    if-eqz v1, :cond_121

    aget-object p0, p1, v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->config(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "like"

    const-string v5, "1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {p1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v3

    const-string v6, "dislike"

    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    sget-object v1, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->FAVORITE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->find(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object v1

    if-eqz v1, :cond_eb

    const/4 v1, 0x1

    goto :goto_ec

    :cond_eb
    const/4 v1, 0x0

    :goto_ec
    const-string v3, "favorit"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    sget-object v3, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCHED:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v0, v3, p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->find(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object v3

    if-eqz v3, :cond_fb

    const/4 v2, 0x1

    :cond_fb
    const-string v3, "watched"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    sget-object v2, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCH_LATER:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v0, v2, p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->find(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object p0

    if-eqz p0, :cond_10a

    goto :goto_10b

    :cond_10a
    move-object v5, v7

    :goto_10b
    const-string p0, "watchLater"

    invoke-virtual {v1, p0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p0, Lcom/shabakaty/cinemana/local/LocalRuntime;->JSON:Lcom/shabakaty/downloader/lr1;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.shabakaty.downloader.r25"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/shabakaty/downloader/lr1;->e(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_121
    const-string v1, "t"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "user.LogoutResponseApi"

    const/4 v7, 0x2

    if-nez v5, :cond_2a8

    const-string v5, "d"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_136

    goto/16 :goto_2a8

    :cond_136
    const-string v1, "v"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_282

    const-string v5, "y"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_148

    goto/16 :goto_282

    :cond_148
    const-string v1, "e"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1bc

    aget-object p0, p1, v2

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    aget-object p1, p1, v7

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->kind(Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->list(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-ltz p0, :cond_1b4

    const v1, 0x186a0

    if-gt p0, v1, :cond_1b4

    mul-int/lit8 p0, p0, 0x1e

    move v1, p0

    :goto_17a
    add-int/lit8 v2, p0, 0x1e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_196

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    invoke-static {v2}, Lcom/shabakaty/cinemana/local/LocalRuntime;->model(Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_17a

    :cond_196
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "data"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "status"

    const-string v0, "success"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "user.UserListApi"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->dto(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1b4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "invalid page"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1bc
    const-string v1, "p"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ec

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    sget-object p1, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->SUBSCRIPTION:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v0, p1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->list(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1d3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->model(Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1d3

    :cond_1e7
    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->dtoArray(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1ec
    const-string v1, "q"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_252

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->inbox()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0x64

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :goto_214
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v2, v1, :cond_22e

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    invoke-static {v1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->model(Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_214

    :cond_22e
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "new"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "notifications"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "user.NotificationsListApi"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->dto(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_252
    const-string v1, "C"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, p1, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aget-object p1, p1, v7

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "{\"status\":\"true\",\"likeNumber\":\"0\",\"dislikeNumebr\":\"0\"}"

    invoke-static {v6, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->dto(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_27c
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0

    :cond_282
    :goto_282
    aget-object p1, p1, v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a0

    sget-object p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->SUBSCRIPTION:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-static {p1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->item(Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->put(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;)V

    const-string p0, "subscription_baseline_pending"

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/shabakaty/cinemana/local/LocalRuntime;->requestScan(Z)V

    goto :goto_2a5

    :cond_2a0
    sget-object p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->SUBSCRIPTION:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v0, p0, p1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->remove(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)V

    :goto_2a5
    const-string p0, "true"

    return-object p0

    :cond_2a8
    :goto_2a8
    aget-object v2, p1, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aget-object p1, p1, v7

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/cinemana/local/LocalRuntime;->kind(Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    move-result-object p1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2c6

    invoke-static {v2}, Lcom/shabakaty/cinemana/local/LocalRuntime;->item(Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->put(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;)V

    goto :goto_2c9

    :cond_2c6
    invoke-virtual {v0, p1, v2}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->remove(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)V

    :goto_2c9
    const-string p0, "{\"status\":\"true\"}"

    invoke-static {v6, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->dto(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2d0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "\u0627\u0644\u062a\u0639\u0644\u064a\u0642\u0627\u062a \u0639\u0644\u0649 \u0627\u0644\u062e\u0627\u062f\u0645 \u062a\u062d\u062a\u0627\u062c \u062d\u0633\u0627\u0628 \u0634\u0628\u0643\u062a\u064a\u061b \u062d\u0633\u0627\u0628\u0643 \u0627\u0644\u062d\u0627\u0644\u064a \u0645\u062d\u0644\u064a"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "CinemanaLocal"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/LocalAccountLog;->emit(Ljava/lang/String;)V

    return-void
.end method

.method public static logout()Lcom/shabakaty/downloader/f74;
    .locals 2

    new-instance v0, Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle;

    new-instance v1, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method static model(Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->payload:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    new-instance v0, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->payload:Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_35

    :cond_10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "nb"

    iget-object v2, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "en_title"

    iget-object v2, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ar_title"

    iget-object p0, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "kind"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    :goto_35
    return-object v0
.end method

.method public static name()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    const-string v1, "\u062d\u0633\u0627\u0628\u064a"

    if-nez v0, :cond_7

    goto :goto_16

    :cond_7
    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    const-string v2, "local_profile"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "name"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_16
    return-object v1
.end method

.method public static open(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/shabakaty/cinemana/local/LocalAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static overlay(Ljava/lang/Object;)V
    .locals 7

    const-string v0, "status"

    sget-object v1, Lcom/shabakaty/cinemana/local/LocalRuntime;->store:Lcom/shabakaty/cinemana/local/LocalAccountStore;

    if-eqz v1, :cond_b8

    if-nez p0, :cond_a

    goto/16 :goto_b8

    :cond_a
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "nb"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "rootSeries"

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[1-9][0-9]*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    goto :goto_34

    :cond_33
    move-object v4, v3

    :goto_34
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4f

    const-string v5, "com.shabakaty.downloader.q25"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4f
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "v"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->FAVORITE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v1, v0, v4}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->find(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_65

    const/4 v0, 0x1

    goto :goto_66

    :cond_65
    const/4 v0, 0x0

    :goto_66
    invoke-virtual {p0, v5, v0}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "s"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCHED:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v1, v0, v3}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->find(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object v0

    if-eqz v0, :cond_7c

    goto :goto_7d

    :cond_7c
    const/4 v2, 0x0

    :goto_7d
    invoke-virtual {p0, v5, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "w"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCH_LATER:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v1, v0, v4}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->find(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object v0

    if-eqz v0, :cond_95

    const-string v0, "1"

    goto :goto_97

    :cond_95
    const-string v0, "0"

    :goto_97
    invoke-virtual {p0, v5, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->PROGRESS:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v1, p0, v3}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->find(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object p0

    if-eqz p0, :cond_b8

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iget-wide v1, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->positionMs:J

    invoke-virtual {v0, v5, v1, v2}, Ljava/lang/reflect/Field;->setLong(Ljava/lang/Object;J)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_b1} :catch_b2

    goto :goto_b8

    :catch_b2
    move-exception p0

    const-string v0, "status_overlay"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b8
    :goto_b8
    return-void
.end method

.method public static profileState(Ljava/lang/Object;)V
    .locals 7

    const-string v0, "postValue"

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "o"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "q"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->avatar()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_52} :catch_53

    goto :goto_59

    :catch_53
    move-exception p0

    const-string v0, "profile_refresh"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_59
    return-void
.end method

.method public static progress(Ljava/lang/String;J)V
    .locals 2

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->pendingProgress:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/shabakaty/cinemana/local/LocalRuntime;->progressScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_21

    sget-object p0, Lcom/shabakaty/cinemana/local/LocalRuntime;->IO:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/shabakaty/cinemana/local/LocalRuntime$$ExternalSyntheticLambda1;-><init>()V

    const-wide/16 v0, 0xa

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, p1, v0, v1, p2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_21
    return-void
.end method

.method public static progressValue(Ljava/lang/String;)J
    .locals 4

    const-wide/16 v0, 0x0

    :try_start_2
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v2

    sget-object v3, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->PROGRESS:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v2, v3, p0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->find(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object p0

    if-nez p0, :cond_f

    goto :goto_11

    :cond_f
    iget-wide v0, p0, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->positionMs:J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_11

    :catch_11
    :goto_11
    return-wide v0
.end method

.method private static removeStage(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_12

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method static requestLabel(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Ljava/net/URI;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "videoSeason"

    const-string v1, "transcoddedFiles"

    const-string v2, "allVideoInfo"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_26
    const/4 v2, 0x3

    if-ge v1, v2, :cond_69

    aget-object v2, v0, v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/id/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_66

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->safeId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_69
    const-string p0, ""

    return-object p0
.end method

.method public static requestScan(Z)V
    .locals 3

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->scanning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_19

    :cond_f
    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->NETWORK:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/shabakaty/cinemana/local/LocalRuntime$4;

    invoke-direct {v1, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime$4;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_19
    :goto_19
    return-void
.end method

.method static restoreLegacy()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v1, "local"

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v0

    const-string v2, "legacy_seeded"

    const-string v3, "1"

    invoke-virtual {v0, v2, v3}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ca1_continue106"

    const-string v2, "ca1_episode_context107"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    :goto_1b
    const/4 v7, 0x2

    if-ge v6, v7, :cond_34

    aget-object v7, v3, v6

    sget-object v8, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-virtual {v8, v7, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_34
    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v3

    sget-object v6, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->STATE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v3, v6}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->list(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_42
    :goto_42
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v8, "settings"

    if-eqz v6, :cond_df

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    iget-object v9, v6, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_42

    new-instance v8, Lorg/json/JSONObject;

    iget-object v6, v6, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->payload:Ljava/lang/String;

    invoke-direct {v8, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "pref"

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_72

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_72

    goto :goto_42

    :cond_72
    sget-object v9, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-virtual {v9, v6, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v9, "key"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "type"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "String"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v12, "value"

    if-eqz v11, :cond_9a

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v9, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_da

    :cond_9a
    const-string v11, "Long"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_aa

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-interface {v6, v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_da

    :cond_aa
    const-string v11, "Integer"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ba

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v6, v9, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_da

    :cond_ba
    const-string v11, "Boolean"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ca

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-interface {v6, v9, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_da

    :cond_ca
    const-string v11, "Float"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_da

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v8, v10

    invoke-interface {v6, v9, v8}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    :cond_da
    :goto_da
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_42

    :cond_df
    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    const-string v2, "local_settings"

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v2

    const-string v3, "parental"

    const-string v6, "0"

    invoke-virtual {v2, v3, v6}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->config(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v2

    const-string v3, "translation"

    invoke-virtual {v2, v3, v6}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->config(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v6, 0x0

    :goto_114
    if-ge v6, v3, :cond_46d

    aget-object v0, v2, v6

    const-string v9, "-wal"

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_45d

    const-string v9, "-shm"

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_45d

    const-string v9, "-journal"

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_132

    goto/16 :goto_45d

    :cond_132
    const/4 v9, 0x0

    :try_start_133
    sget-object v10, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-virtual {v10, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_141} :catch_441
    .catchall {:try_start_133 .. :try_end_141} :catchall_43e

    :try_start_141
    const-string v0, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name=\'video_status\'"

    invoke-virtual {v10, v0, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_141 .. :try_end_147} :catch_436
    .catchall {:try_start_141 .. :try_end_147} :catchall_455

    :try_start_147
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_14b
    .catchall {:try_start_147 .. :try_end_14b} :catchall_428

    :try_start_14b
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_14e
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_14e} :catch_436
    .catchall {:try_start_14b .. :try_end_14e} :catchall_455

    if-nez v0, :cond_157

    if-eqz v10, :cond_45d

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_45d

    :cond_157
    :try_start_157
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_157 .. :try_end_15a} :catch_436
    .catchall {:try_start_157 .. :try_end_15a} :catchall_455

    :try_start_15a
    const-string v0, "UPDATE video_status SET favorite=0,watched=0,watchLater=\'false\',videoProgress=0"

    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v11, 0x5

    new-array v12, v11, [Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    sget-object v13, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->FAVORITE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    aput-object v13, v12, v4

    sget-object v13, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCH_LATER:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    const/4 v14, 0x1

    aput-object v13, v12, v14

    sget-object v13, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCHED:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    aput-object v13, v12, v7

    sget-object v13, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->PROGRESS:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    const/4 v15, 0x3

    aput-object v13, v12, v15

    sget-object v13, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->SUBSCRIPTION:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    const/4 v15, 0x4

    aput-object v13, v12, v15
    :try_end_17e
    .catchall {:try_start_15a .. :try_end_17e} :catchall_41d

    const/4 v13, 0x0

    :goto_17f
    if-ge v13, v11, :cond_1a8

    :try_start_181
    aget-object v11, v12, v13

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->list(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_18f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1a2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    iget-object v15, v11, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {v0, v15, v11}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v15, 0x4

    goto :goto_18f

    :cond_1a2
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    const/4 v11, 0x5

    const/4 v15, 0x4

    goto :goto_17f

    :cond_1a8
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v11, "PRAGMA table_info(video_model)"

    invoke-virtual {v10, v11, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_1b3
    .catchall {:try_start_181 .. :try_end_1b3} :catchall_415

    :goto_1b3
    :try_start_1b3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_1c5

    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c4
    .catchall {:try_start_1b3 .. :try_end_1c4} :catchall_407

    goto :goto_1b3

    :cond_1c5
    :try_start_1c5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11
    :try_end_1d4
    .catchall {:try_start_1c5 .. :try_end_1d4} :catchall_415

    const-string v12, "watched"

    const-string v13, "videoProgress"

    const-string v15, "watchLater"

    const-string v7, "favorite"

    if-eqz v11, :cond_2cc

    :try_start_1de
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    invoke-static {v11}, Lcom/shabakaty/cinemana/local/LocalRuntime;->model(Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;)Lorg/json/JSONObject;

    move-result-object v14

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1f5
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18
    :try_end_1f9
    .catchall {:try_start_1de .. :try_end_1f9} :catchall_415

    move-object/from16 v19, v0

    const-string v0, "enTitle"

    if-eqz v18, :cond_265

    :try_start_1ff
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/Map$Entry;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20
    :try_end_209
    .catchall {:try_start_1ff .. :try_end_209} :catchall_415

    move-object/from16 v21, v2

    :try_start_20b
    move-object/from16 v2, v20

    check-cast v2, Ljava/lang/String;
    :try_end_20f
    .catchall {:try_start_20b .. :try_end_20f} :catchall_262

    move/from16 v20, v3

    :try_start_211
    const-string v3, "arTitle"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21c

    const-string v0, "ar_title"

    goto :goto_23c

    :cond_21c
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_225

    const-string v0, "en_title"

    goto :goto_23c

    :cond_225
    const-string v0, "arContent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_230

    const-string v0, "ar_content"

    goto :goto_23c

    :cond_230
    const-string v0, "enContent"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23b

    const-string v0, "en_content"

    goto :goto_23c

    :cond_23b
    move-object v0, v2

    :goto_23c
    invoke-interface/range {v18 .. v18}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v18, v4

    const-string v4, "TEXT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_256

    const-string v3, ""

    invoke-virtual {v14, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_259

    :cond_256
    invoke-virtual {v9, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_259
    move-object/from16 v4, v18

    move-object/from16 v0, v19

    move/from16 v3, v20

    move-object/from16 v2, v21

    goto :goto_1f5

    :catchall_262
    move-exception v0

    goto/16 :goto_418

    :cond_265
    move-object/from16 v21, v2

    move/from16 v20, v3

    move-object/from16 v18, v4

    const-string v2, "nb"

    iget-object v3, v11, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_281

    iget-object v2, v11, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->title:Ljava/lang/String;

    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_281
    const-string v0, "video_model"

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v10, v0, v3, v9, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "id"

    iget-object v3, v11, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "videoId"

    iget-object v3, v11, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "liked"

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "disLiked"

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "annoying"

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v12, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "false"

    invoke-virtual {v0, v15, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v13, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "video_status"

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v10, v2, v4, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-object/from16 v4, v18

    move-object/from16 v0, v19

    move/from16 v3, v20

    move-object/from16 v2, v21

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v14, 0x1

    goto/16 :goto_1d0

    :cond_2cc
    move-object/from16 v21, v2

    move/from16 v20, v3

    const/4 v0, 0x4

    new-array v2, v0, [Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->FAVORITE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCH_LATER:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    const/4 v3, 0x1

    aput-object v0, v2, v3

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCHED:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    const/4 v3, 0x2

    aput-object v0, v2, v3

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->PROGRESS:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    const/4 v3, 0x3

    aput-object v0, v2, v3
    :try_end_2e7
    .catchall {:try_start_211 .. :try_end_2e7} :catchall_405

    const/4 v0, 0x4

    const/4 v3, 0x0

    :goto_2e9
    if-ge v3, v0, :cond_371

    :try_start_2eb
    aget-object v0, v2, v3

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->list(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_363

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    sget-object v11, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->FAVORITE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    if-ne v0, v11, :cond_30b

    move-object v11, v7

    goto :goto_318

    :cond_30b
    sget-object v11, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCH_LATER:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    if-ne v0, v11, :cond_311

    move-object v11, v15

    goto :goto_318

    :cond_311
    sget-object v11, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCHED:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    if-ne v0, v11, :cond_317

    move-object v11, v12

    goto :goto_318

    :cond_317
    move-object v11, v13

    :goto_318
    sget-object v14, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->PROGRESS:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;
    :try_end_31a
    .catchall {:try_start_2eb .. :try_end_31a} :catchall_36c

    if-ne v0, v14, :cond_325

    move-object/from16 v17, v4

    move-object v14, v5

    :try_start_31f
    iget-wide v4, v9, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->positionMs:J
    :try_end_321
    .catchall {:try_start_31f .. :try_end_321} :catchall_322

    goto :goto_32a

    :catchall_322
    move-exception v0

    goto/16 :goto_41b

    :cond_325
    move-object/from16 v17, v4

    move-object v14, v5

    const-wide/16 v4, 0x1

    :goto_32a
    :try_start_32a
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v0

    const-string v0, "UPDATE video_status SET "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=? WHERE videoId=? OR id=?"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x3

    new-array v11, v5, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v11, v16

    iget-object v4, v9, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    const/16 v16, 0x1

    aput-object v4, v11, v16

    iget-object v4, v9, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;
    :try_end_355
    .catchall {:try_start_32a .. :try_end_355} :catchall_361

    const/4 v9, 0x2

    :try_start_356
    aput-object v4, v11, v9

    invoke-virtual {v10, v0, v11}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v5, v14

    move-object/from16 v4, v17

    move-object/from16 v0, v18

    goto :goto_2f9

    :catchall_361
    move-exception v0

    goto :goto_36e

    :cond_363
    move-object v14, v5

    const/4 v5, 0x3

    const/4 v9, 0x2

    add-int/lit8 v3, v3, 0x1

    move-object v5, v14

    const/4 v0, 0x4

    goto/16 :goto_2e9

    :catchall_36c
    move-exception v0

    move-object v14, v5

    :goto_36e
    const/4 v9, 0x2

    goto/16 :goto_403

    :cond_371
    move-object v14, v5

    const/4 v9, 0x2

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v0

    sget-object v2, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->STATE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v0, v2, v8}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->find(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;Ljava/lang/String;)Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-result-object v0

    if-eqz v0, :cond_3f2

    new-instance v2, Lorg/json/JSONObject;

    iget-object v0, v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->payload:Ljava/lang/String;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const-string v5, "PRAGMA table_info(settings)"

    const/4 v7, 0x0

    invoke-virtual {v10, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_39b
    .catchall {:try_start_356 .. :try_end_39b} :catchall_402

    :goto_39b
    :try_start_39b
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3aa

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3a9
    .catchall {:try_start_39b .. :try_end_3a9} :catchall_3ec

    goto :goto_39b

    :cond_3aa
    :try_start_3aa
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_3ad
    :goto_3ad
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_3b1
    .catchall {:try_start_3aa .. :try_end_3b1} :catchall_402

    const-string v7, "userId"

    if-eqz v5, :cond_3cf

    :try_start_3b5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3ad

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3ad

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3ad

    :cond_3cf
    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_3f2

    const-string v0, "userId=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;
    :try_end_3da
    .catchall {:try_start_3b5 .. :try_end_3da} :catchall_402

    const/4 v4, 0x0

    :try_start_3db
    aput-object v1, v2, v4

    invoke-virtual {v10, v8, v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3f3

    invoke-virtual {v3, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    const/4 v2, 0x0

    invoke-virtual {v10, v8, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_3f3

    :catchall_3ec
    move-exception v0

    const/4 v4, 0x0

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_3f2
    const/4 v4, 0x0

    :cond_3f3
    :goto_3f3
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3f6
    .catchall {:try_start_3db .. :try_end_3f6} :catchall_413

    :try_start_3f6
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const-string v0, "legacy_progress_restored"

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V
    :try_end_3fe
    .catch Ljava/lang/Exception; {:try_start_3f6 .. :try_end_3fe} :catch_434
    .catchall {:try_start_3f6 .. :try_end_3fe} :catchall_455

    if-eqz v10, :cond_463

    goto/16 :goto_451

    :catchall_402
    move-exception v0

    :goto_403
    const/4 v4, 0x0

    goto :goto_424

    :catchall_405
    move-exception v0

    goto :goto_41a

    :catchall_407
    move-exception v0

    move-object/from16 v21, v2

    move/from16 v20, v3

    move-object v14, v5

    const/4 v4, 0x0

    const/4 v9, 0x2

    :try_start_40f
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_413
    .catchall {:try_start_40f .. :try_end_413} :catchall_413

    :catchall_413
    move-exception v0

    goto :goto_424

    :catchall_415
    move-exception v0

    move-object/from16 v21, v2

    :goto_418
    move/from16 v20, v3

    :goto_41a
    move-object v14, v5

    :goto_41b
    const/4 v4, 0x0

    goto :goto_423

    :catchall_41d
    move-exception v0

    move-object/from16 v21, v2

    move/from16 v20, v3

    move-object v14, v5

    :goto_423
    const/4 v9, 0x2

    :goto_424
    :try_start_424
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    :catchall_428
    move-exception v0

    move-object/from16 v21, v2

    move/from16 v20, v3

    move-object v14, v5

    const/4 v9, 0x2

    move-object v2, v0

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_434
    .catch Ljava/lang/Exception; {:try_start_424 .. :try_end_434} :catch_434
    .catchall {:try_start_424 .. :try_end_434} :catchall_455

    :catch_434
    move-exception v0

    goto :goto_44a

    :catch_436
    move-exception v0

    move-object/from16 v21, v2

    move/from16 v20, v3

    move-object v14, v5

    const/4 v9, 0x2

    goto :goto_44a

    :catchall_43e
    move-exception v0

    move-object v2, v9

    goto :goto_457

    :catch_441
    move-exception v0

    move-object/from16 v21, v2

    move/from16 v20, v3

    move-object v14, v5

    move-object v2, v9

    const/4 v9, 0x2

    move-object v10, v2

    :goto_44a
    :try_start_44a
    const-string v2, "legacy_restore"

    invoke-static {v2, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_44f
    .catchall {:try_start_44a .. :try_end_44f} :catchall_455

    if-eqz v10, :cond_463

    :goto_451
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_463

    :catchall_455
    move-exception v0

    move-object v9, v10

    :goto_457
    if-eqz v9, :cond_45c

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_45c
    throw v0

    :cond_45d
    :goto_45d
    move-object/from16 v21, v2

    move/from16 v20, v3

    move-object v14, v5

    const/4 v9, 0x2

    :cond_463
    :goto_463
    add-int/lit8 v6, v6, 0x1

    move-object v5, v14

    move/from16 v3, v20

    move-object/from16 v2, v21

    const/4 v7, 0x2

    goto/16 :goto_114

    :cond_46d
    return-void
.end method

.method static safeId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_b

    const-string v0, "[A-Za-z0-9_-]{1,100}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const-string p0, "invalid"

    :goto_d
    return-object p0
.end method

.method static scan(Z)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v1, ""

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "last_scan"

    const-string v0, "0"

    invoke-virtual {v2, v5, v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->config(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v8, v3, v6

    if-ltz v8, :cond_2d

    sub-long v6, v3, v6

    if-eqz p0, :cond_22

    const-wide/32 v8, 0xea60

    goto :goto_25

    :cond_22
    const-wide/32 v8, 0x1499700

    :goto_25
    cmp-long v10, v6, v8

    if-gez v10, :cond_2d

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->deliver()V

    return-void

    :cond_2d
    sget-object v6, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    if-eqz v6, :cond_168

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_45

    goto/16 :goto_168

    :cond_45
    sget-object v6, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->SUBSCRIPTION:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-virtual {v2, v6}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->list(Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_52

    return-void

    :cond_52
    const-string v7, "scan_cursor"

    invoke-virtual {v2, v7, v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->config(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v0, 0x5

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const-wide/32 v12, 0xafc8

    add-long/2addr v10, v12

    const/4 v13, 0x0

    :goto_6e
    if-ge v13, v9, :cond_13c

    sget-boolean v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->scanCancelled:Z

    if-nez v0, :cond_13c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    cmp-long v0, v14, v10

    if-gez v0, :cond_13c

    add-int v0, v8, v13

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v14

    rem-int/2addr v0, v14

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    :try_start_89
    iget-object v14, v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-static {v14}, Lcom/shabakaty/cinemana/local/LocalRuntime;->episodes(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-nez v15, :cond_9d

    move-object/from16 v26, v5

    move/from16 v16, v9

    move-wide/from16 v17, v10

    goto/16 :goto_132

    :cond_9d
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_a2} :catch_126

    move/from16 v16, v9

    const/4 v12, 0x0

    :goto_a5
    :try_start_a5
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v12, v9, :cond_116

    invoke-virtual {v14, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_af} :catch_122

    move-wide/from16 v17, v10

    :try_start_b1
    const-string v10, "nb"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "[A-Za-z0-9_-]{1,100}"

    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_108

    new-instance v11, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    move-object/from16 v25, v14

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_c8} :catch_112

    move-object/from16 v26, v5

    :try_start_ca
    iget-object v5, v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->title:Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " \u2014 "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "season"

    invoke-virtual {v9, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "episodeNummer"

    invoke-virtual {v9, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v24

    const-wide/16 v22, 0x0

    move-object/from16 v19, v11

    move-object/from16 v20, v10

    invoke-direct/range {v19 .. v24}, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v10, v17

    move-object/from16 v14, v25

    move-object/from16 v5, v26

    goto :goto_a5

    :cond_108
    move-object/from16 v26, v5

    new-instance v0, Ljava/io/IOException;

    const-string v5, "invalid episode id"

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_112
    move-exception v0

    move-object/from16 v26, v5

    goto :goto_12d

    :cond_116
    move-object/from16 v26, v5

    move-wide/from16 v17, v10

    iget-object v0, v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;->id:Ljava/lang/String;

    invoke-virtual {v2, v0, v15}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->reconcile(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_11f} :catch_120

    goto :goto_132

    :catch_120
    move-exception v0

    goto :goto_12d

    :catch_122
    move-exception v0

    move-object/from16 v26, v5

    goto :goto_12b

    :catch_126
    move-exception v0

    move-object/from16 v26, v5

    move/from16 v16, v9

    :goto_12b
    move-wide/from16 v17, v10

    :goto_12d
    const-string v5, "episode_fetch"

    invoke-static {v5, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_132
    add-int/lit8 v13, v13, 0x1

    move/from16 v9, v16

    move-wide/from16 v10, v17

    move-object/from16 v5, v26

    goto/16 :goto_6e

    :cond_13c
    move-object/from16 v26, v5

    add-int/2addr v8, v13

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr v8, v0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v26

    invoke-virtual {v2, v1, v0}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scan_complete checked="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->deliver()V

    :cond_168
    :goto_168
    return-void
.end method

.method static schedule()V
    .locals 7

    :try_start_0
    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    const-string v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v4, 0x67e9

    const/4 v5, 0x1

    if-eqz v3, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getId()I

    move-result v3

    if-ne v3, v4, :cond_13

    const/4 v2, 0x1

    goto :goto_13

    :cond_2a
    if-nez v2, :cond_57

    new-instance v1, Landroid/app/job/JobInfo$Builder;

    new-instance v2, Landroid/content/ComponentName;

    sget-object v3, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    const-class v6, Lcom/shabakaty/cinemana/local/LocalEpisodeJob;

    invoke-direct {v2, v3, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v1, v4, v2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v1, v5}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    const-wide/32 v2, 0x1499700

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_50} :catch_51

    goto :goto_57

    :catch_51
    move-exception v0

    const-string v1, "schedule"

    invoke-static {v1, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->failure(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_57
    :goto_57
    return-void
.end method

.method static settings()Ljava/lang/String;
    .locals 7

    const-string v0, "0"

    :try_start_2
    sget-object v1, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    const-string v2, "local_settings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "parentalLevelStatus"

    const-string v4, "parental"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "parentalControl"

    new-instance v4, Lorg/json/JSONArray;

    const-string v5, "[{\"id\":\"0\",\"name\":\"\u0627\u0644\u0627\u0641\u062a\u0631\u0627\u0636\u064a\"},{\"id\":\"1\",\"name\":\"\u0627\u0644\u0643\u0644\"},{\"id\":\"2\",\"name\":\"\u0644\u0644\u0639\u0627\u0626\u0644\u0629\"},{\"id\":\"3\",\"name\":\"\u0644\u0644\u0623\u0637\u0641\u0627\u0644\"}]"

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "userTranslation"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "name"

    const-string v6, "\u0639\u0631\u0636 \u0627\u0644\u0623\u0639\u0645\u0627\u0644 \u0628\u062f\u0648\u0646 \u062a\u0631\u062c\u0645\u0629"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "status"

    const-string v6, "translation"

    invoke-interface {v1, v6, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_54} :catch_55

    return-object v0

    :catch_55
    const-string v0, "{}"

    return-object v0
.end method

.method static snapshotLegacy(Z)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v1, "ar_title"

    const-string v2, "kind"

    const-string v3, "nb"

    const-string v4, "en_title"

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->data()Lcom/shabakaty/cinemana/local/LocalAccountStore;

    move-result-object v5

    new-instance v6, Ljava/util/EnumMap;

    const-class v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-direct {v6, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->values()[Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    move-result-object v0

    array-length v7, v0

    const/4 v9, 0x0

    :goto_19
    if-ge v9, v7, :cond_28

    aget-object v10, v0, v9

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    :cond_28
    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->databaseList()[Ljava/lang/String;

    move-result-object v7

    array-length v9, v7

    const/4 v0, 0x0

    const/4 v10, 0x0

    :goto_31
    const-string v12, "1"

    if-ge v10, v9, :cond_254

    aget-object v13, v7, v10

    const/4 v14, 0x0

    :try_start_38
    sget-object v15, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-virtual {v15, v13}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13
    :try_end_47
    .catch Landroid/database/SQLException; {:try_start_38 .. :try_end_47} :catch_23e
    .catchall {:try_start_38 .. :try_end_47} :catchall_237

    :try_start_47
    const-string v11, "SELECT * FROM video_status"

    invoke-virtual {v13, v11, v14}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_4d
    .catch Landroid/database/SQLException; {:try_start_47 .. :try_end_4d} :catch_22e
    .catchall {:try_start_47 .. :try_end_4d} :catchall_22b

    :cond_4d
    :goto_4d
    :try_start_4d
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1a7

    const-string v0, "videoId"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4d

    const-string v14, "[A-Za-z0-9_-]{1,100}"

    invoke-virtual {v0, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_68

    goto :goto_4d

    :cond_68
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "\u0639\u0645\u0644 "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v15, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v15

    invoke-virtual {v15, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v15

    invoke-virtual {v15, v2, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v15

    const-string v8, "SELECT nb,arTitle,enTitle,kind,rootSeries,season,episodeNummer,imgObjUrl,imgThumbObjUrl,imgMediumThumbObjUrl FROM video_model WHERE nb=?"
    :try_end_8c
    .catchall {:try_start_4d .. :try_end_8c} :catchall_21f

    move-object/from16 v23, v7

    :try_start_8e
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v8, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_96
    .catchall {:try_start_8e .. :try_end_96} :catchall_1a0

    :try_start_96
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_10d

    const/16 v8, 0xa

    new-array v14, v8, [Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v3, v14, v17

    const/16 v17, 0x1

    aput-object v1, v14, v17

    const/16 v16, 0x2

    aput-object v4, v14, v16

    const/16 v17, 0x3

    aput-object v2, v14, v17

    const-string v17, "rootSeries"

    const/16 v18, 0x4

    aput-object v17, v14, v18

    const-string v17, "season"

    const/16 v18, 0x5

    aput-object v17, v14, v18

    const-string v17, "episodeNummer"

    const/16 v18, 0x6

    aput-object v17, v14, v18

    const-string v17, "imgObjUrl"

    const/16 v18, 0x7

    aput-object v17, v14, v18

    const-string v17, "imgThumbObjUrl"

    const/16 v18, 0x8

    aput-object v17, v14, v18

    const-string v17, "imgMediumThumbObjUrl"

    const/16 v18, 0x9

    aput-object v17, v14, v18
    :try_end_d4
    .catchall {:try_start_96 .. :try_end_d4} :catchall_197

    move-object/from16 v24, v2

    const/4 v2, 0x0

    :goto_d7
    if-ge v2, v8, :cond_f7

    :try_start_d9
    invoke-interface {v7, v2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v17

    if-nez v17, :cond_eb

    aget-object v8, v14, v2
    :try_end_e1
    .catchall {:try_start_d9 .. :try_end_e1} :catchall_f4

    move-object/from16 v25, v3

    :try_start_e3
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_ed

    :cond_eb
    move-object/from16 v25, v3

    :goto_ed
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v25

    const/16 v8, 0xa

    goto :goto_d7

    :catchall_f4
    move-exception v0

    goto/16 :goto_19a

    :cond_f7
    move-object/from16 v25, v3

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_107

    invoke-virtual {v15, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_107
    .catchall {:try_start_e3 .. :try_end_107} :catchall_10a

    :cond_107
    move-object/from16 v19, v2

    goto :goto_113

    :catchall_10a
    move-exception v0

    goto/16 :goto_19c

    :cond_10d
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v19, v14

    :goto_113
    :try_start_113
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const-string v2, "videoProgress"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    new-instance v7, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v17, v7

    move-object/from16 v18, v0

    move-wide/from16 v20, v2

    invoke-direct/range {v17 .. v22}, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    const-wide/16 v14, 0x0

    cmp-long v0, v2, v14

    if-lez v0, :cond_140

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->PROGRESS:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_140
    if-eqz p0, :cond_18b

    const-string v0, "favorite"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_159

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->FAVORITE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_159
    const-string v0, "watched"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_170

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCHED:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_170
    const-string v0, "watchLater"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18b

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->WATCH_LATER:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18b
    move-object/from16 v7, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    const/4 v15, 0x1

    goto/16 :goto_4d

    :catchall_194
    move-exception v0

    goto/16 :goto_226

    :catchall_197
    move-exception v0

    move-object/from16 v24, v2

    :goto_19a
    move-object/from16 v25, v3

    :goto_19c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_1a0
    .catchall {:try_start_113 .. :try_end_1a0} :catchall_194

    :catchall_1a0
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    goto/16 :goto_226

    :cond_1a7
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v23, v7

    :try_start_1ad
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const-string v0, "SELECT * FROM settings WHERE userId=?"
    :try_end_1b2
    .catch Landroid/database/SQLException; {:try_start_1ad .. :try_end_1b2} :catch_21a
    .catchall {:try_start_1ad .. :try_end_1b2} :catchall_22b

    const/4 v2, 0x1

    :try_start_1b3
    new-array v3, v2, [Ljava/lang/String;

    const-string v7, "local"

    const/4 v8, 0x0

    aput-object v7, v3, v8

    invoke-virtual {v13, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1be
    .catch Landroid/database/SQLException; {:try_start_1b3 .. :try_end_1be} :catch_21b
    .catchall {:try_start_1b3 .. :try_end_1be} :catchall_22b

    :try_start_1be
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_20b

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v7, 0x0

    :goto_1ca
    invoke-interface {v3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v8

    if-ge v7, v8, :cond_1f0

    invoke-interface {v3, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-nez v8, :cond_1ed

    const-string v8, "userId"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1ed

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1ed
    add-int/lit8 v7, v7, 0x1

    goto :goto_1ca

    :cond_1f0
    sget-object v7, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->STATE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    new-instance v8, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    const-string v15, "settings"

    const-string v16, ""

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v19

    const-wide/16 v17, 0x0

    move-object v14, v8

    invoke-direct/range {v14 .. v19}, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20b
    .catchall {:try_start_1be .. :try_end_20b} :catchall_215

    :cond_20b
    :try_start_20b
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_20e
    .catch Landroid/database/SQLException; {:try_start_20b .. :try_end_20e} :catch_21b
    .catchall {:try_start_20b .. :try_end_20e} :catchall_22b

    if-eqz v13, :cond_213

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_213
    const/4 v0, 0x1

    goto :goto_24a

    :catchall_215
    move-exception v0

    :try_start_216
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw v0

    :catch_21a
    const/4 v2, 0x1

    :catch_21b
    nop

    move-object v14, v13

    const/4 v0, 0x1

    goto :goto_245

    :catchall_21f
    move-exception v0

    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v23, v7

    :goto_226
    const/4 v2, 0x1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_22b
    .catch Landroid/database/SQLException; {:try_start_216 .. :try_end_22b} :catch_21b
    .catchall {:try_start_216 .. :try_end_22b} :catchall_22b

    :catchall_22b
    move-exception v0

    move-object v14, v13

    goto :goto_238

    :catch_22e
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v23, v7

    nop

    move-object v14, v13

    goto :goto_245

    :catchall_237
    move-exception v0

    :goto_238
    if-eqz v14, :cond_23d

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_23d
    throw v0

    :catch_23e
    move-object/from16 v24, v2

    move-object/from16 v25, v3

    move-object/from16 v23, v7

    nop

    :goto_245
    if-eqz v14, :cond_24a

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_24a
    :goto_24a
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    goto/16 :goto_31

    :cond_254
    const-string v1, "ca1_continue106"

    const-string v2, "ca1_episode_context107"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    :goto_25e
    if-ge v2, v3, :cond_2ff

    aget-object v4, v1, v2

    sget-object v7, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_275
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2fb

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "pref"

    invoke-virtual {v10, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "key"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "value"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v10, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    const-string v13, "type"

    invoke-virtual {v10, v13, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "SHA-256"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v13, "UTF-8"

    invoke-virtual {v9, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v9

    invoke-static {v9}, Lcom/shabakaty/cinemana/local/LocalRuntime;->hex([B)Ljava/lang/String;

    move-result-object v14

    sget-object v9, Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;->STATE:Lcom/shabakaty/cinemana/local/LocalAccountStore$ListKind;

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    new-instance v11, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;

    const-wide/16 v16, 0x0

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v18

    const-string v15, ""

    move-object v13, v11

    invoke-direct/range {v13 .. v18}, Lcom/shabakaty/cinemana/local/LocalAccountStore$Item;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_275

    :cond_2fb
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_25e

    :cond_2ff
    invoke-virtual {v5, v6}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->merge(Ljava/util/Map;)V

    if-eqz p0, :cond_30b

    if-eqz v0, :cond_30b

    const-string v0, "legacy_seeded"

    invoke-virtual {v5, v0, v12}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30b
    const-string v0, "legacy_snapshot_complete"

    invoke-static {v0}, Lcom/shabakaty/cinemana/local/LocalRuntime;->log(Ljava/lang/String;)V

    return-void
.end method

.method static updateProfile()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    const-string v1, "local_profile"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/cinemana/local/LocalRuntime;->store:Lcom/shabakaty/cinemana/local/LocalAccountStore;

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "data/local-account/avatar.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v1, Lcom/shabakaty/cinemana/local/LocalRuntime;->store:Lcom/shabakaty/cinemana/local/LocalAccountStore;

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/local/LocalAccountStore;->avatar()[B

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_4c

    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    :try_start_37
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3b} :catch_44

    :try_start_3b
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_41} :catch_42

    goto :goto_55

    :catch_42
    move-exception v1

    goto :goto_46

    :catch_44
    move-exception v1

    const/4 v0, 0x0

    :goto_46
    if-eqz v0, :cond_4b

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_4b
    throw v1

    :cond_4c
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_55
    :goto_55
    return-void
.end method

.method public static wrap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sput-object p0, Lcom/shabakaty/cinemana/local/LocalRuntime;->api:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/shabakaty/downloader/k9;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/shabakaty/cinemana/local/LocalRuntime$3;

    invoke-direct {v2, p0}, Lcom/shabakaty/cinemana/local/LocalRuntime$3;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
