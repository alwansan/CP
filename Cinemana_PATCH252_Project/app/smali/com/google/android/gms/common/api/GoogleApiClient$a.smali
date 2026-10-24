.class public final Lcom/google/android/gms/common/api/GoogleApiClient$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/GoogleApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/a<",
            "*>;",
            "Lcom/shabakaty/downloader/t30$b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Landroid/content/Context;

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/a<",
            "*>;",
            "Lcom/google/android/gms/common/api/a$d;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public i:Landroid/os/Looper;

.field public j:Lcom/shabakaty/downloader/pq1;

.field public k:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$a<",
            "+",
            "Lcom/shabakaty/downloader/mb5;",
            "Lcom/shabakaty/downloader/x54;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$b;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$a;->a:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$a;->b:Ljava/util/Set;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/ad;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ad;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$a;->e:Ljava/util/Map;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/ad;

    invoke-direct {v0}, Lcom/shabakaty/downloader/ad;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$a;->g:Ljava/util/Map;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$a;->h:I

    .line 7
    sget-object v0, Lcom/shabakaty/downloader/pq1;->c:Ljava/lang/Object;

    sget-object v0, Lcom/shabakaty/downloader/pq1;->d:Lcom/shabakaty/downloader/pq1;

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$a;->j:Lcom/shabakaty/downloader/pq1;

    .line 8
    sget-object v0, Lcom/shabakaty/downloader/v95;->a:Lcom/google/android/gms/common/api/a$a;

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$a;->k:Lcom/google/android/gms/common/api/a$a;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$a;->l:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$a;->m:Ljava/util/ArrayList;

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$a;->f:Landroid/content/Context;

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$a;->i:Landroid/os/Looper;

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/GoogleApiClient$a;->c:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/GoogleApiClient$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 26
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/common/api/GoogleApiClient$a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v2, "must call addApi() to add at least one API"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/a;->b(ZLjava/lang/Object;)V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/x54;->r:Lcom/shabakaty/downloader/x54;

    .line 3
    iget-object v2, v1, Lcom/google/android/gms/common/api/GoogleApiClient$a;->g:Ljava/util/Map;

    sget-object v3, Lcom/shabakaty/downloader/v95;->b:Lcom/google/android/gms/common/api/a;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v0, v1, Lcom/google/android/gms/common/api/GoogleApiClient$a;->g:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/x54;

    :cond_0
    move-object v10, v0

    .line 5
    new-instance v15, Lcom/shabakaty/downloader/t30;

    const/4 v3, 0x0

    iget-object v4, v1, Lcom/google/android/gms/common/api/GoogleApiClient$a;->a:Ljava/util/Set;

    iget-object v5, v1, Lcom/google/android/gms/common/api/GoogleApiClient$a;->e:Ljava/util/Map;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v1, Lcom/google/android/gms/common/api/GoogleApiClient$a;->c:Ljava/lang/String;

    iget-object v9, v1, Lcom/google/android/gms/common/api/GoogleApiClient$a;->d:Ljava/lang/String;

    move-object v2, v15

    invoke-direct/range {v2 .. v10}, Lcom/shabakaty/downloader/t30;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/x54;)V

    .line 6
    iget-object v0, v15, Lcom/shabakaty/downloader/t30;->d:Ljava/util/Map;

    .line 7
    new-instance v9, Lcom/shabakaty/downloader/ad;

    invoke-direct {v9}, Lcom/shabakaty/downloader/ad;-><init>()V

    .line 8
    new-instance v10, Lcom/shabakaty/downloader/ad;

    invoke-direct {v10}, Lcom/shabakaty/downloader/ad;-><init>()V

    .line 9
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object v2, v1, Lcom/google/android/gms/common/api/GoogleApiClient$a;->g:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/16 v25, 0x0

    move-object/from16 v12, v25

    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/google/android/gms/common/api/a;

    .line 11
    iget-object v2, v1, Lcom/google/android/gms/common/api/GoogleApiClient$a;->g:Ljava/util/Map;

    invoke-interface {v2, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 12
    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    .line 13
    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v9, v13, v2}, Lcom/shabakaty/downloader/m64;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v8, Lcom/shabakaty/downloader/oc5;

    invoke-direct {v8, v13, v3}, Lcom/shabakaty/downloader/oc5;-><init>(Lcom/google/android/gms/common/api/a;Z)V

    .line 15
    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v2, v13, Lcom/google/android/gms/common/api/a;->a:Lcom/google/android/gms/common/api/a$a;

    const-string v3, "null reference"

    .line 17
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    iget-object v3, v1, Lcom/google/android/gms/common/api/GoogleApiClient$a;->f:Landroid/content/Context;

    iget-object v4, v1, Lcom/google/android/gms/common/api/GoogleApiClient$a;->i:Landroid/os/Looper;

    move-object v5, v15

    move-object v7, v8

    .line 19
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/gms/common/api/a$a;->b(Landroid/content/Context;Landroid/os/Looper;Lcom/shabakaty/downloader/t30;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$b;Lcom/google/android/gms/common/api/GoogleApiClient$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object v2

    .line 20
    iget-object v3, v13, Lcom/google/android/gms/common/api/a;->b:Lcom/google/android/gms/common/api/a$g;

    .line 21
    invoke-virtual {v10, v3, v2}, Lcom/shabakaty/downloader/m64;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    invoke-interface {v2}, Lcom/google/android/gms/common/api/a$f;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v12, :cond_3

    move-object v12, v13

    goto :goto_0

    .line 23
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    iget-object v2, v13, Lcom/google/android/gms/common/api/a;->c:Ljava/lang/String;

    iget-object v3, v12, Lcom/google/android/gms/common/api/a;->c:Ljava/lang/String;

    const/16 v4, 0x15

    .line 25
    invoke-static {v2, v4}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v4

    const-string v5, " cannot be used with "

    invoke-static {v4, v2, v5, v3}, Lcom/shabakaty/downloader/bc0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-eqz v12, :cond_6

    .line 26
    iget-object v0, v1, Lcom/google/android/gms/common/api/GoogleApiClient$a;->a:Ljava/util/Set;

    iget-object v2, v1, Lcom/google/android/gms/common/api/GoogleApiClient$a;->b:Ljava/util/Set;

    .line 27
    invoke-interface {v0, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "Must not set scopes in GoogleApiClient.Builder when using %s. Set account in GoogleSignInOptions.Builder instead."

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 28
    iget-object v6, v12, Lcom/google/android/gms/common/api/a;->c:Ljava/lang/String;

    aput-object v6, v5, v3

    if-eqz v0, :cond_5

    goto :goto_1

    .line 29
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v4, 0x1

    .line 30
    :goto_1
    invoke-virtual {v10}, Lcom/shabakaty/downloader/ad;->values()Ljava/util/Collection;

    move-result-object v0

    .line 31
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/ka5;->l(Ljava/lang/Iterable;Z)I

    move-result v23

    .line 32
    new-instance v0, Lcom/shabakaty/downloader/ka5;

    iget-object v12, v1, Lcom/google/android/gms/common/api/GoogleApiClient$a;->f:Landroid/content/Context;

    new-instance v13, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v13}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iget-object v2, v1, Lcom/google/android/gms/common/api/GoogleApiClient$a;->i:Landroid/os/Looper;

    iget-object v3, v1, Lcom/google/android/gms/common/api/GoogleApiClient$a;->j:Lcom/shabakaty/downloader/pq1;

    iget-object v4, v1, Lcom/google/android/gms/common/api/GoogleApiClient$a;->k:Lcom/google/android/gms/common/api/a$a;

    iget-object v5, v1, Lcom/google/android/gms/common/api/GoogleApiClient$a;->l:Ljava/util/ArrayList;

    iget-object v6, v1, Lcom/google/android/gms/common/api/GoogleApiClient$a;->m:Ljava/util/ArrayList;

    iget v7, v1, Lcom/google/android/gms/common/api/GoogleApiClient$a;->h:I

    move-object v11, v0

    move-object v8, v14

    move-object v14, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v9

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v10

    move/from16 v22, v7

    move-object/from16 v24, v8

    invoke-direct/range {v11 .. v24}, Lcom/shabakaty/downloader/ka5;-><init>(Landroid/content/Context;Ljava/util/concurrent/locks/Lock;Landroid/os/Looper;Lcom/shabakaty/downloader/t30;Lcom/shabakaty/downloader/pq1;Lcom/google/android/gms/common/api/a$a;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/Map;IILjava/util/ArrayList;)V

    .line 33
    sget-object v2, Lcom/google/android/gms/common/api/GoogleApiClient;->a:Ljava/util/Set;

    .line 34
    monitor-enter v2

    .line 35
    :try_start_0
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    iget v2, v1, Lcom/google/android/gms/common/api/GoogleApiClient$a;->h:I

    if-gez v2, :cond_7

    return-object v0

    .line 38
    :cond_7
    invoke-static/range {v25 .. v25}, Lcom/google/android/gms/common/api/internal/LifecycleCallback;->c(Lcom/shabakaty/downloader/hh2;)Lcom/shabakaty/downloader/nh2;

    throw v25

    :catchall_0
    move-exception v0

    .line 39
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
