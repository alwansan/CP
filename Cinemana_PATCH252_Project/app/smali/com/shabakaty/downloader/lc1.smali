.class public Lcom/shabakaty/downloader/lc1;
.super Ljava/lang/Object;
.source "FirebaseInstallations.java"

# interfaces
.implements Lcom/shabakaty/downloader/mc1;


# static fields
.field public static final m:Ljava/lang/Object;

.field public static final n:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final a:Lcom/shabakaty/downloader/ec1;

.field public final b:Lcom/shabakaty/downloader/jc1;

.field public final c:Lcom/shabakaty/downloader/zb3;

.field public final d:Lcom/shabakaty/downloader/yy4;

.field public final e:Lcom/shabakaty/downloader/ay1;

.field public final f:Lcom/shabakaty/downloader/pm3;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/util/concurrent/ExecutorService;

.field public final i:Ljava/util/concurrent/ExecutorService;

.field public j:Ljava/lang/String;

.field public k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/ka1;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/nc4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/lc1;->m:Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/lc1$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/lc1$a;-><init>()V

    sput-object v0, Lcom/shabakaty/downloader/lc1;->n:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/ec1;Lcom/shabakaty/downloader/pj3;Lcom/shabakaty/downloader/pj3;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ec1;",
            "Lcom/shabakaty/downloader/pj3<",
            "Lcom/shabakaty/downloader/qx4;",
            ">;",
            "Lcom/shabakaty/downloader/pj3<",
            "Lcom/shabakaty/downloader/xs1;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sget-object v10, Lcom/shabakaty/downloader/lc1;->n:Ljava/util/concurrent/ThreadFactory;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1e

    move-object v0, v8

    move-object v5, v9

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    new-instance v0, Lcom/shabakaty/downloader/jc1;

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 3
    iget-object v1, p1, Lcom/shabakaty/downloader/ec1;->a:Landroid/content/Context;

    .line 4
    invoke-direct {v0, v1, p2, p3}, Lcom/shabakaty/downloader/jc1;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/pj3;Lcom/shabakaty/downloader/pj3;)V

    new-instance p2, Lcom/shabakaty/downloader/zb3;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/zb3;-><init>(Lcom/shabakaty/downloader/ec1;)V

    .line 5
    invoke-static {}, Lcom/shabakaty/downloader/yy4;->c()Lcom/shabakaty/downloader/yy4;

    move-result-object p3

    new-instance v1, Lcom/shabakaty/downloader/ay1;

    invoke-direct {v1, p1}, Lcom/shabakaty/downloader/ay1;-><init>(Lcom/shabakaty/downloader/ec1;)V

    new-instance v2, Lcom/shabakaty/downloader/pm3;

    invoke-direct {v2}, Lcom/shabakaty/downloader/pm3;-><init>()V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/shabakaty/downloader/lc1;->g:Ljava/lang/Object;

    .line 8
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/shabakaty/downloader/lc1;->k:Ljava/util/Set;

    .line 9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/shabakaty/downloader/lc1;->l:Ljava/util/List;

    .line 10
    iput-object p1, p0, Lcom/shabakaty/downloader/lc1;->a:Lcom/shabakaty/downloader/ec1;

    .line 11
    iput-object v0, p0, Lcom/shabakaty/downloader/lc1;->b:Lcom/shabakaty/downloader/jc1;

    .line 12
    iput-object p2, p0, Lcom/shabakaty/downloader/lc1;->c:Lcom/shabakaty/downloader/zb3;

    .line 13
    iput-object p3, p0, Lcom/shabakaty/downloader/lc1;->d:Lcom/shabakaty/downloader/yy4;

    .line 14
    iput-object v1, p0, Lcom/shabakaty/downloader/lc1;->e:Lcom/shabakaty/downloader/ay1;

    .line 15
    iput-object v2, p0, Lcom/shabakaty/downloader/lc1;->f:Lcom/shabakaty/downloader/pm3;

    .line 16
    iput-object v8, p0, Lcom/shabakaty/downloader/lc1;->h:Ljava/util/concurrent/ExecutorService;

    .line 17
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1e

    move-object v0, p1

    move-object v5, v9

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/lc1;->i:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static f(Lcom/shabakaty/downloader/ec1;)Lcom/shabakaty/downloader/lc1;
    .locals 2

    const/4 v0, 0x1

    const-string v1, "Null is not a valid value of FirebaseApp."

    .line 1
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/a;->b(ZLjava/lang/Object;)V

    .line 2
    const-class v0, Lcom/shabakaty/downloader/mc1;

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 4
    iget-object p0, p0, Lcom/shabakaty/downloader/ec1;->d:Lcom/shabakaty/downloader/z80;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/s;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .line 5
    check-cast p0, Lcom/shabakaty/downloader/lc1;

    return-object p0
.end method


# virtual methods
.method public a(Z)Lcom/shabakaty/downloader/uk4;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/shabakaty/downloader/uk4<",
            "Lcom/shabakaty/downloader/v12;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lc1;->h()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/zk4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zk4;-><init>()V

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/wp1;

    iget-object v2, p0, Lcom/shabakaty/downloader/lc1;->d:Lcom/shabakaty/downloader/yy4;

    invoke-direct {v1, v2, v0}, Lcom/shabakaty/downloader/wp1;-><init>(Lcom/shabakaty/downloader/yy4;Lcom/shabakaty/downloader/zk4;)V

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/lc1;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 5
    :try_start_0
    iget-object v3, p0, Lcom/shabakaty/downloader/lc1;->l:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/lc1;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/shabakaty/downloader/kc1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/shabakaty/downloader/kc1;-><init>(Lcom/shabakaty/downloader/lc1;ZI)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(Z)V
    .locals 5

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/lc1;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/lc1;->a:Lcom/shabakaty/downloader/ec1;

    .line 3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/ec1;->a:Landroid/content/Context;

    const-string v2, "generatefid.lock"

    .line 5
    invoke-static {v1, v2}, Lcom/shabakaty/downloader/ag6;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/shabakaty/downloader/ag6;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iget-object v2, p0, Lcom/shabakaty/downloader/lc1;->c:Lcom/shabakaty/downloader/zb3;

    .line 7
    invoke-virtual {v2}, Lcom/shabakaty/downloader/zb3;->b()Lcom/shabakaty/downloader/ac3;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ac3;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/lc1;->i(Lcom/shabakaty/downloader/ac3;)Ljava/lang/String;

    move-result-object v3

    .line 10
    iget-object v4, p0, Lcom/shabakaty/downloader/lc1;->c:Lcom/shabakaty/downloader/zb3;

    .line 11
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ac3;->k()Lcom/shabakaty/downloader/ac3$a;

    move-result-object v2

    .line 12
    check-cast v2, Lcom/shabakaty/downloader/rh$b;

    .line 13
    iput-object v3, v2, Lcom/shabakaty/downloader/rh$b;->a:Ljava/lang/String;

    .line 14
    sget-object v3, Lcom/shabakaty/downloader/zb3$a;->t:Lcom/shabakaty/downloader/zb3$a;

    .line 15
    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/rh$b;->b(Lcom/shabakaty/downloader/zb3$a;)Lcom/shabakaty/downloader/ac3$a;

    .line 16
    invoke-virtual {v2}, Lcom/shabakaty/downloader/rh$b;->a()Lcom/shabakaty/downloader/ac3;

    move-result-object v2

    .line 17
    invoke-virtual {v4, v2}, Lcom/shabakaty/downloader/zb3;->a(Lcom/shabakaty/downloader/ac3;)Lcom/shabakaty/downloader/ac3;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    .line 18
    :try_start_2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ag6;->n()V

    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {v2}, Lcom/shabakaty/downloader/ac3;->k()Lcom/shabakaty/downloader/ac3$a;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/rh$b;

    const/4 v1, 0x0

    .line 20
    iput-object v1, v0, Lcom/shabakaty/downloader/rh$b;->c:Ljava/lang/String;

    .line 21
    invoke-virtual {v0}, Lcom/shabakaty/downloader/rh$b;->a()Lcom/shabakaty/downloader/ac3;

    move-result-object v2

    .line 22
    :cond_2
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/lc1;->l(Lcom/shabakaty/downloader/ac3;)V

    .line 23
    iget-object v0, p0, Lcom/shabakaty/downloader/lc1;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/shabakaty/downloader/kc1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/shabakaty/downloader/kc1;-><init>(Lcom/shabakaty/downloader/lc1;ZI)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_3

    .line 24
    :try_start_3
    invoke-virtual {v1}, Lcom/shabakaty/downloader/ag6;->n()V

    .line 25
    :cond_3
    throw p1

    :catchall_1
    move-exception p1

    .line 26
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final c(Lcom/shabakaty/downloader/ac3;)Lcom/shabakaty/downloader/ac3;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lc1;->b:Lcom/shabakaty/downloader/jc1;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lc1;->d()Ljava/lang/String;

    move-result-object v1

    .line 3
    move-object v2, p1

    check-cast v2, Lcom/shabakaty/downloader/rh;

    .line 4
    iget-object v3, v2, Lcom/shabakaty/downloader/rh;->b:Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lc1;->g()Ljava/lang/String;

    move-result-object v4

    .line 6
    iget-object v2, v2, Lcom/shabakaty/downloader/rh;->e:Ljava/lang/String;

    .line 7
    iget-object v5, v0, Lcom/shabakaty/downloader/jc1;->d:Lcom/shabakaty/downloader/gs3;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/gs3;->a()Z

    move-result v5

    const-string v6, "Firebase Installations Service is unavailable. Please try again later."

    const/4 v7, 0x2

    if-eqz v5, :cond_a

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v5, v8

    const/4 v9, 0x1

    aput-object v3, v5, v9

    const-string v3, "projects/%s/installations/%s/authTokens:generate"

    .line 8
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v0, v3}, Lcom/shabakaty/downloader/jc1;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    const/4 v5, 0x0

    :goto_0
    if-gt v5, v9, :cond_9

    const v10, 0x8003

    .line 10
    invoke-static {v10}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 11
    invoke-virtual {v0, v3, v1}, Lcom/shabakaty/downloader/jc1;->c(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v10

    :try_start_0
    const-string v11, "POST"

    .line 12
    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v11, "Authorization"

    .line 13
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "FIS_v2 "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v10, v9}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 15
    invoke-virtual {v0, v10}, Lcom/shabakaty/downloader/jc1;->h(Ljava/net/HttpURLConnection;)V

    .line 16
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    .line 17
    iget-object v12, v0, Lcom/shabakaty/downloader/jc1;->d:Lcom/shabakaty/downloader/gs3;

    invoke-virtual {v12, v11}, Lcom/shabakaty/downloader/gs3;->b(I)V

    const/16 v12, 0xc8

    if-lt v11, v12, :cond_0

    const/16 v12, 0x12c

    if-ge v11, v12, :cond_0

    const/4 v12, 0x1

    goto :goto_1

    :cond_0
    const/4 v12, 0x0

    :goto_1
    const/4 v13, 0x0

    if-eqz v12, :cond_1

    .line 18
    invoke-virtual {v0, v10}, Lcom/shabakaty/downloader/jc1;->f(Ljava/net/HttpURLConnection;)Lcom/shabakaty/downloader/bo4;

    move-result-object v0

    goto :goto_3

    .line 19
    :cond_1
    invoke-static {v10, v13, v1, v4}, Lcom/shabakaty/downloader/jc1;->b(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v12, 0x191

    if-eq v11, v12, :cond_5

    const/16 v12, 0x194

    if-ne v11, v12, :cond_2

    goto :goto_2

    :cond_2
    const/16 v12, 0x1ad

    if-eq v11, v12, :cond_4

    const/16 v12, 0x1f4

    if-lt v11, v12, :cond_3

    const/16 v12, 0x258

    if-ge v11, v12, :cond_3

    goto/16 :goto_4

    :cond_3
    const-string v11, "Firebase-Installations"

    const-string v12, "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase."

    .line 20
    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {}, Lcom/shabakaty/downloader/bo4;->a()Lcom/shabakaty/downloader/bo4$a;

    move-result-object v11

    sget-object v12, Lcom/shabakaty/downloader/bo4$b;->s:Lcom/shabakaty/downloader/bo4$b;

    check-cast v11, Lcom/shabakaty/downloader/ai$b;

    .line 22
    iput-object v12, v11, Lcom/shabakaty/downloader/ai$b;->c:Lcom/shabakaty/downloader/bo4$b;

    .line 23
    invoke-virtual {v11}, Lcom/shabakaty/downloader/ai$b;->a()Lcom/shabakaty/downloader/bo4;

    move-result-object v0

    goto :goto_3

    .line 24
    :cond_4
    new-instance v11, Lcom/shabakaty/downloader/nc1;

    const-string v12, "Firebase servers have received too many requests from this client in a short period of time. Please try again later."

    const/4 v13, 0x3

    invoke-direct {v11, v12, v13}, Lcom/shabakaty/downloader/nc1;-><init>(Ljava/lang/String;I)V

    throw v11

    .line 25
    :cond_5
    :goto_2
    invoke-static {}, Lcom/shabakaty/downloader/bo4;->a()Lcom/shabakaty/downloader/bo4$a;

    move-result-object v11

    sget-object v12, Lcom/shabakaty/downloader/bo4$b;->t:Lcom/shabakaty/downloader/bo4$b;

    check-cast v11, Lcom/shabakaty/downloader/ai$b;

    .line 26
    iput-object v12, v11, Lcom/shabakaty/downloader/ai$b;->c:Lcom/shabakaty/downloader/bo4$b;

    .line 27
    invoke-virtual {v11}, Lcom/shabakaty/downloader/ai$b;->a()Lcom/shabakaty/downloader/bo4;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    :goto_3
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 29
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 30
    check-cast v0, Lcom/shabakaty/downloader/ai;

    .line 31
    iget-object v1, v0, Lcom/shabakaty/downloader/ai;->c:Lcom/shabakaty/downloader/bo4$b;

    .line 32
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_8

    if-eq v1, v9, :cond_7

    if-ne v1, v7, :cond_6

    .line 33
    monitor-enter p0

    .line 34
    :try_start_1
    iput-object v13, p0, Lcom/shabakaty/downloader/lc1;->j:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    monitor-exit p0

    .line 36
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ac3;->k()Lcom/shabakaty/downloader/ac3$a;

    move-result-object p1

    sget-object v0, Lcom/shabakaty/downloader/zb3$a;->s:Lcom/shabakaty/downloader/zb3$a;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/ac3$a;->b(Lcom/shabakaty/downloader/zb3$a;)Lcom/shabakaty/downloader/ac3$a;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ac3$a;->a()Lcom/shabakaty/downloader/ac3;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    .line 37
    monitor-exit p0

    throw p1

    .line 38
    :cond_6
    new-instance p1, Lcom/shabakaty/downloader/nc1;

    const-string v0, "Firebase Installations Service is unavailable. Please try again later."

    invoke-direct {p1, v0, v7}, Lcom/shabakaty/downloader/nc1;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_7
    const-string v0, "BAD CONFIG"

    .line 39
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ac3;->k()Lcom/shabakaty/downloader/ac3$a;

    move-result-object p1

    .line 40
    check-cast p1, Lcom/shabakaty/downloader/rh$b;

    .line 41
    iput-object v0, p1, Lcom/shabakaty/downloader/rh$b;->g:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/shabakaty/downloader/zb3$a;->v:Lcom/shabakaty/downloader/zb3$a;

    .line 43
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/rh$b;->b(Lcom/shabakaty/downloader/zb3$a;)Lcom/shabakaty/downloader/ac3$a;

    .line 44
    invoke-virtual {p1}, Lcom/shabakaty/downloader/rh$b;->a()Lcom/shabakaty/downloader/ac3;

    move-result-object p1

    return-object p1

    .line 45
    :cond_8
    iget-object v1, v0, Lcom/shabakaty/downloader/ai;->a:Ljava/lang/String;

    .line 46
    iget-wide v2, v0, Lcom/shabakaty/downloader/ai;->b:J

    .line 47
    iget-object v0, p0, Lcom/shabakaty/downloader/lc1;->d:Lcom/shabakaty/downloader/yy4;

    .line 48
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yy4;->b()J

    move-result-wide v4

    .line 49
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ac3;->k()Lcom/shabakaty/downloader/ac3$a;

    move-result-object p1

    .line 50
    check-cast p1, Lcom/shabakaty/downloader/rh$b;

    .line 51
    iput-object v1, p1, Lcom/shabakaty/downloader/rh$b;->c:Ljava/lang/String;

    .line 52
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/shabakaty/downloader/rh$b;->e:Ljava/lang/Long;

    .line 53
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/shabakaty/downloader/rh$b;->f:Ljava/lang/Long;

    .line 54
    invoke-virtual {p1}, Lcom/shabakaty/downloader/rh$b;->a()Lcom/shabakaty/downloader/ac3;

    move-result-object p1

    return-object p1

    :catchall_1
    move-exception p1

    .line 55
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 56
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 57
    throw p1

    .line 58
    :catch_0
    :goto_4
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 59
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 60
    :cond_9
    new-instance p1, Lcom/shabakaty/downloader/nc1;

    invoke-direct {p1, v6, v7}, Lcom/shabakaty/downloader/nc1;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 61
    :cond_a
    new-instance p1, Lcom/shabakaty/downloader/nc1;

    invoke-direct {p1, v6, v7}, Lcom/shabakaty/downloader/nc1;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lc1;->a:Lcom/shabakaty/downloader/ec1;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/ec1;->c:Lcom/shabakaty/downloader/tc1;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/tc1;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lc1;->a:Lcom/shabakaty/downloader/ec1;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/ec1;->c:Lcom/shabakaty/downloader/tc1;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/tc1;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lc1;->a:Lcom/shabakaty/downloader/ec1;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/ec1;->c:Lcom/shabakaty/downloader/tc1;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/tc1;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Lcom/shabakaty/downloader/uk4;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/uk4<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lc1;->h()V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/lc1;->j:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Lcom/shabakaty/downloader/kl4;->e(Ljava/lang/Object;)Lcom/shabakaty/downloader/uk4;

    move-result-object v0

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/zk4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zk4;-><init>()V

    .line 6
    new-instance v1, Lcom/shabakaty/downloader/xp1;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/xp1;-><init>(Lcom/shabakaty/downloader/zk4;)V

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/lc1;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 8
    :try_start_1
    iget-object v3, p0, Lcom/shabakaty/downloader/lc1;->l:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/lc1;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/shabakaty/downloader/rr;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/rr;-><init>(Lcom/shabakaty/downloader/lc1;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-object v0

    :catchall_0
    move-exception v0

    .line 12
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 13
    monitor-exit p0

    throw v0
.end method

.method public final h()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lc1;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/a;->g(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lc1;->g()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/a;->g(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lc1;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/a;->g(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lc1;->e()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shabakaty/downloader/yy4;->c:Ljava/util/regex/Pattern;

    const-string v3, ":"

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/a;->b(ZLjava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/lc1;->d()Ljava/lang/String;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/shabakaty/downloader/yy4;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 9
    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/a;->b(ZLjava/lang/Object;)V

    return-void
.end method

.method public final i(Lcom/shabakaty/downloader/ac3;)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lc1;->a:Lcom/shabakaty/downloader/ec1;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ec1;->a()V

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/ec1;->b:Ljava/lang/String;

    const-string v1, "CHIME_ANDROID_SDK"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/lc1;->a:Lcom/shabakaty/downloader/ec1;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ec1;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    :cond_0
    check-cast p1, Lcom/shabakaty/downloader/rh;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/rh;->c:Lcom/shabakaty/downloader/zb3$a;

    .line 7
    sget-object v0, Lcom/shabakaty/downloader/zb3$a;->r:Lcom/shabakaty/downloader/zb3$a;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_3

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/lc1;->f:Lcom/shabakaty/downloader/pm3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/pm3;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/shabakaty/downloader/lc1;->e:Lcom/shabakaty/downloader/ay1;

    .line 10
    iget-object v0, p1, Lcom/shabakaty/downloader/ay1;->a:Landroid/content/SharedPreferences;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p1, Lcom/shabakaty/downloader/ay1;->a:Landroid/content/SharedPreferences;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    iget-object v2, p1, Lcom/shabakaty/downloader/ay1;->a:Landroid/content/SharedPreferences;

    const-string v3, "|S|id"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_4

    .line 13
    :try_start_2
    monitor-exit v0

    goto :goto_1

    .line 14
    :cond_4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ay1;->a()Ljava/lang/String;

    move-result-object v2

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 16
    iget-object p1, p0, Lcom/shabakaty/downloader/lc1;->f:Lcom/shabakaty/downloader/pm3;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/pm3;->a()Ljava/lang/String;

    move-result-object v2

    :cond_5
    return-object v2

    :catchall_0
    move-exception p1

    .line 17
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public final j(Lcom/shabakaty/downloader/ac3;)Lcom/shabakaty/downloader/ac3;
    .locals 23

    move-object/from16 v1, p0

    .line 1
    move-object/from16 v0, p1

    check-cast v0, Lcom/shabakaty/downloader/rh;

    .line 2
    iget-object v2, v0, Lcom/shabakaty/downloader/rh;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0xb

    if-ne v2, v5, :cond_3

    .line 4
    iget-object v2, v1, Lcom/shabakaty/downloader/lc1;->e:Lcom/shabakaty/downloader/ay1;

    .line 5
    iget-object v5, v2, Lcom/shabakaty/downloader/ay1;->a:Landroid/content/SharedPreferences;

    monitor-enter v5

    .line 6
    :try_start_0
    sget-object v6, Lcom/shabakaty/downloader/ay1;->c:[Ljava/lang/String;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    .line 7
    iget-object v10, v2, Lcom/shabakaty/downloader/ay1;->b:Ljava/lang/String;

    .line 8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "|T|"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "|"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 9
    iget-object v10, v2, Lcom/shabakaty/downloader/ay1;->a:Landroid/content/SharedPreferences;

    invoke-interface {v10, v9, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 10
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    const-string v2, "{"

    .line 11
    invoke-virtual {v9, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 12
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "token"

    .line 13
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_0
    move-object v3, v9

    .line 14
    :catch_0
    :goto_1
    :try_start_2
    monitor-exit v5

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 15
    :cond_2
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 16
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 17
    :cond_3
    :goto_2
    iget-object v2, v1, Lcom/shabakaty/downloader/lc1;->b:Lcom/shabakaty/downloader/jc1;

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/lc1;->d()Ljava/lang/String;

    move-result-object v5

    .line 19
    iget-object v0, v0, Lcom/shabakaty/downloader/rh;->b:Ljava/lang/String;

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/lc1;->g()Ljava/lang/String;

    move-result-object v6

    .line 21
    invoke-virtual/range {p0 .. p0}, Lcom/shabakaty/downloader/lc1;->e()Ljava/lang/String;

    move-result-object v7

    .line 22
    iget-object v8, v2, Lcom/shabakaty/downloader/jc1;->d:Lcom/shabakaty/downloader/gs3;

    invoke-virtual {v8}, Lcom/shabakaty/downloader/gs3;->a()Z

    move-result v8

    const-string v9, "Firebase Installations Service is unavailable. Please try again later."

    const/4 v10, 0x2

    if-eqz v8, :cond_c

    const/4 v8, 0x1

    new-array v11, v8, [Ljava/lang/Object;

    aput-object v6, v11, v4

    const-string v12, "projects/%s/installations"

    .line 23
    invoke-static {v12, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 24
    invoke-virtual {v2, v11}, Lcom/shabakaty/downloader/jc1;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v11

    const/4 v12, 0x0

    :goto_3
    if-gt v12, v8, :cond_b

    const v13, 0x8001

    .line 25
    invoke-static {v13}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 26
    invoke-virtual {v2, v11, v5}, Lcom/shabakaty/downloader/jc1;->c(Ljava/net/URL;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v13

    :try_start_3
    const-string v14, "POST"

    .line 27
    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v13, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    if-eqz v3, :cond_4

    const-string v14, "x-goog-fis-android-iid-migration-auth"

    .line 29
    invoke-virtual {v13, v14, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_4
    invoke-virtual {v2, v13, v0, v7}, Lcom/shabakaty/downloader/jc1;->g(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    .line 32
    iget-object v15, v2, Lcom/shabakaty/downloader/jc1;->d:Lcom/shabakaty/downloader/gs3;

    invoke-virtual {v15, v14}, Lcom/shabakaty/downloader/gs3;->b(I)V

    const/16 v15, 0xc8

    if-lt v14, v15, :cond_5

    const/16 v15, 0x12c

    if-ge v14, v15, :cond_5

    const/4 v15, 0x1

    goto :goto_4

    :cond_5
    const/4 v15, 0x0

    :goto_4
    if-eqz v15, :cond_6

    .line 33
    invoke-virtual {v2, v13}, Lcom/shabakaty/downloader/jc1;->e(Ljava/net/HttpURLConnection;)Lcom/shabakaty/downloader/u12;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 35
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    goto :goto_5

    .line 36
    :cond_6
    :try_start_4
    invoke-static {v13, v7, v5, v6}, Lcom/shabakaty/downloader/jc1;->b(Ljava/net/HttpURLConnection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v15, 0x1ad

    if-eq v14, v15, :cond_a

    const/16 v15, 0x1f4

    if-lt v14, v15, :cond_7

    const/16 v15, 0x258

    if-ge v14, v15, :cond_7

    goto/16 :goto_6

    :cond_7
    const-string v14, "Firebase-Installations"

    const-string v15, "Firebase Installations can not communicate with Firebase server APIs due to invalid configuration. Please update your Firebase initialization process and set valid Firebase options (API key, Project ID, Application ID) when initializing Firebase."

    .line 37
    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    const/16 v19, 0x0

    const/16 v18, 0x0

    const/16 v17, 0x0

    .line 38
    sget-object v21, Lcom/shabakaty/downloader/u12$a;->s:Lcom/shabakaty/downloader/u12$a;

    .line 39
    new-instance v14, Lcom/shabakaty/downloader/jh;

    const/16 v22, 0x0

    move-object/from16 v16, v14

    invoke-direct/range {v16 .. v22}, Lcom/shabakaty/downloader/jh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/bo4;Lcom/shabakaty/downloader/u12$a;Lcom/shabakaty/downloader/jh$a;)V
    :try_end_4
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 40
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 41
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    move-object v0, v14

    .line 42
    :goto_5
    check-cast v0, Lcom/shabakaty/downloader/jh;

    .line 43
    iget-object v2, v0, Lcom/shabakaty/downloader/jh;->e:Lcom/shabakaty/downloader/u12$a;

    .line 44
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_9

    if-ne v2, v8, :cond_8

    const-string v0, "BAD CONFIG"

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ac3;->k()Lcom/shabakaty/downloader/ac3$a;

    move-result-object v2

    .line 46
    check-cast v2, Lcom/shabakaty/downloader/rh$b;

    .line 47
    iput-object v0, v2, Lcom/shabakaty/downloader/rh$b;->g:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/shabakaty/downloader/zb3$a;->v:Lcom/shabakaty/downloader/zb3$a;

    .line 49
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/rh$b;->b(Lcom/shabakaty/downloader/zb3$a;)Lcom/shabakaty/downloader/ac3$a;

    .line 50
    invoke-virtual {v2}, Lcom/shabakaty/downloader/rh$b;->a()Lcom/shabakaty/downloader/ac3;

    move-result-object v0

    return-object v0

    .line 51
    :cond_8
    new-instance v0, Lcom/shabakaty/downloader/nc1;

    const-string v2, "Firebase Installations Service is unavailable. Please try again later."

    invoke-direct {v0, v2, v10}, Lcom/shabakaty/downloader/nc1;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 52
    :cond_9
    iget-object v2, v0, Lcom/shabakaty/downloader/jh;->b:Ljava/lang/String;

    .line 53
    iget-object v3, v0, Lcom/shabakaty/downloader/jh;->c:Ljava/lang/String;

    .line 54
    iget-object v4, v1, Lcom/shabakaty/downloader/lc1;->d:Lcom/shabakaty/downloader/yy4;

    .line 55
    invoke-virtual {v4}, Lcom/shabakaty/downloader/yy4;->b()J

    move-result-wide v4

    .line 56
    iget-object v6, v0, Lcom/shabakaty/downloader/jh;->d:Lcom/shabakaty/downloader/bo4;

    .line 57
    invoke-virtual {v6}, Lcom/shabakaty/downloader/bo4;->c()Ljava/lang/String;

    move-result-object v6

    .line 58
    iget-object v0, v0, Lcom/shabakaty/downloader/jh;->d:Lcom/shabakaty/downloader/bo4;

    .line 59
    invoke-virtual {v0}, Lcom/shabakaty/downloader/bo4;->d()J

    move-result-wide v7

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/shabakaty/downloader/ac3;->k()Lcom/shabakaty/downloader/ac3$a;

    move-result-object v0

    .line 61
    check-cast v0, Lcom/shabakaty/downloader/rh$b;

    .line 62
    iput-object v2, v0, Lcom/shabakaty/downloader/rh$b;->a:Ljava/lang/String;

    .line 63
    sget-object v2, Lcom/shabakaty/downloader/zb3$a;->u:Lcom/shabakaty/downloader/zb3$a;

    .line 64
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/rh$b;->b(Lcom/shabakaty/downloader/zb3$a;)Lcom/shabakaty/downloader/ac3$a;

    .line 65
    iput-object v6, v0, Lcom/shabakaty/downloader/rh$b;->c:Ljava/lang/String;

    .line 66
    iput-object v3, v0, Lcom/shabakaty/downloader/rh$b;->d:Ljava/lang/String;

    .line 67
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/shabakaty/downloader/rh$b;->e:Ljava/lang/Long;

    .line 68
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lcom/shabakaty/downloader/rh$b;->f:Ljava/lang/Long;

    .line 69
    invoke-virtual {v0}, Lcom/shabakaty/downloader/rh$b;->a()Lcom/shabakaty/downloader/ac3;

    move-result-object v0

    return-object v0

    .line 70
    :cond_a
    :try_start_5
    new-instance v14, Lcom/shabakaty/downloader/nc1;

    const-string v15, "Firebase servers have received too many requests from this client in a short period of time. Please try again later."

    const/4 v4, 0x3

    invoke-direct {v14, v15, v4}, Lcom/shabakaty/downloader/nc1;-><init>(Ljava/lang/String;I)V

    throw v14
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    .line 71
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 72
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 73
    throw v0

    .line 74
    :catch_1
    :goto_6
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 75
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x0

    goto/16 :goto_3

    .line 76
    :cond_b
    new-instance v0, Lcom/shabakaty/downloader/nc1;

    invoke-direct {v0, v9, v10}, Lcom/shabakaty/downloader/nc1;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 77
    :cond_c
    new-instance v0, Lcom/shabakaty/downloader/nc1;

    invoke-direct {v0, v9, v10}, Lcom/shabakaty/downloader/nc1;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public final k(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lc1;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/lc1;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/nc4;

    .line 5
    invoke-interface {v2, p1}, Lcom/shabakaty/downloader/nc4;->b(Ljava/lang/Exception;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final l(Lcom/shabakaty/downloader/ac3;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/lc1;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/lc1;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/nc4;

    .line 5
    invoke-interface {v2, p1}, Lcom/shabakaty/downloader/nc4;->a(Lcom/shabakaty/downloader/ac3;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 7
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
