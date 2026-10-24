.class public Lcom/google/android/gms/common/api/internal/c;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/internal/c$b;,
        Lcom/google/android/gms/common/api/internal/c$c;,
        Lcom/google/android/gms/common/api/internal/c$a;
    }
.end annotation


# static fields
.field public static final D:Lcom/google/android/gms/common/api/Status;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public static final E:Lcom/google/android/gms/common/api/Status;

.field public static final F:Ljava/lang/Object;

.field public static G:Lcom/google/android/gms/common/api/internal/c;


# instance fields
.field public final A:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/j9<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final B:Landroid/os/Handler;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field

.field public volatile C:Z

.field public r:J

.field public final s:Landroid/content/Context;

.field public final t:Lcom/shabakaty/downloader/pq1;

.field public final u:Lcom/shabakaty/downloader/yb5;

.field public final v:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final w:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/j9<",
            "*>;",
            "Lcom/google/android/gms/common/api/internal/c$a<",
            "*>;>;"
        }
    .end annotation
.end field

.field public y:Lcom/shabakaty/downloader/zc5;

.field public final z:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/j9<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const-string v2, "Sign-out occurred while this API call was in progress."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/c;->D:Lcom/google/android/gms/common/api/Status;

    .line 2
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "The user must be signed in to make this API call."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/api/internal/c;->E:Lcom/google/android/gms/common/api/Status;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/internal/c;->F:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/shabakaty/downloader/pq1;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    .line 2
    iput-wide v0, p0, Lcom/google/android/gms/common/api/internal/c;->r:J

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/c;->v:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/c;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v3, 0x5

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v0, v3, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/c;->x:Ljava/util/Map;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/c;->y:Lcom/shabakaty/downloader/zc5;

    .line 7
    new-instance v0, Lcom/shabakaty/downloader/dd;

    .line 8
    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/dd;-><init>(I)V

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/c;->z:Ljava/util/Set;

    .line 10
    new-instance v0, Lcom/shabakaty/downloader/dd;

    .line 11
    invoke-direct {v0, v2}, Lcom/shabakaty/downloader/dd;-><init>(I)V

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/c;->A:Ljava/util/Set;

    .line 13
    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/c;->C:Z

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/c;->s:Landroid/content/Context;

    .line 15
    new-instance v0, Lcom/shabakaty/downloader/nc5;

    invoke-direct {v0, p2, p0}, Lcom/shabakaty/downloader/nc5;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 16
    iput-object p3, p0, Lcom/google/android/gms/common/api/internal/c;->t:Lcom/shabakaty/downloader/pq1;

    .line 17
    new-instance p2, Lcom/shabakaty/downloader/yb5;

    invoke-direct {p2, p3}, Lcom/shabakaty/downloader/yb5;-><init>(Lcom/shabakaty/downloader/qq1;)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/c;->u:Lcom/shabakaty/downloader/yb5;

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 19
    sget-object p2, Lcom/shabakaty/downloader/qs0;->d:Ljava/lang/Boolean;

    if-nez p2, :cond_1

    .line 20
    invoke-static {}, Lcom/shabakaty/downloader/uc3;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "android.hardware.type.automotive"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, Lcom/shabakaty/downloader/qs0;->d:Ljava/lang/Boolean;

    .line 21
    :cond_1
    sget-object p1, Lcom/shabakaty/downloader/qs0;->d:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 22
    iput-boolean v2, p0, Lcom/google/android/gms/common/api/internal/c;->C:Z

    :cond_2
    const/4 p1, 0x6

    .line 23
    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/c;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/common/api/internal/c;->F:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/api/internal/c;->G:Lcom/google/android/gms/common/api/internal/c;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GoogleApiHandler"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 5
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/google/android/gms/common/api/internal/c;

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v3, Lcom/shabakaty/downloader/pq1;->c:Ljava/lang/Object;

    sget-object v3, Lcom/shabakaty/downloader/pq1;->d:Lcom/shabakaty/downloader/pq1;

    invoke-direct {v2, p0, v1, v3}, Lcom/google/android/gms/common/api/internal/c;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/shabakaty/downloader/pq1;)V

    sput-object v2, Lcom/google/android/gms/common/api/internal/c;->G:Lcom/google/android/gms/common/api/internal/c;

    .line 8
    :cond_0
    sget-object p0, Lcom/google/android/gms/common/api/internal/c;->G:Lcom/google/android/gms/common/api/internal/c;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static d(Lcom/shabakaty/downloader/j9;Lcom/shabakaty/downloader/gb0;)Lcom/google/android/gms/common/api/Status;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/j9<",
            "*>;",
            "Lcom/shabakaty/downloader/gb0;",
            ")",
            "Lcom/google/android/gms/common/api/Status;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/google/android/gms/common/api/Status;

    .line 2
    iget-object p0, p0, Lcom/shabakaty/downloader/j9;->b:Lcom/google/android/gms/common/api/a;

    .line 3
    iget-object p0, p0, Lcom/google/android/gms/common/api/a;->c:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-static {p0, v1}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    const-string v1, "API: "

    const-string v3, " is not available on this device. Connection failed with: "

    invoke-static {v2, v1, p0, v3, v0}, Lcom/shabakaty/downloader/nm0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v4, p1, Lcom/shabakaty/downloader/gb0;->t:Landroid/app/PendingIntent;

    const/4 v1, 0x1

    const/16 v2, 0x11

    move-object v0, v6

    move-object v5, p1

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/api/Status;-><init>(IILjava/lang/String;Landroid/app/PendingIntent;Lcom/shabakaty/downloader/gb0;)V

    return-object v6
.end method


# virtual methods
.method public final b(Lcom/shabakaty/downloader/zc5;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/common/api/internal/c;->F:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/c;->y:Lcom/shabakaty/downloader/zc5;

    if-eq v1, p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/c;->y:Lcom/shabakaty/downloader/zc5;

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/c;->z:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/c;->z:Ljava/util/Set;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/zc5;->w:Lcom/shabakaty/downloader/dd;

    .line 7
    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Lcom/shabakaty/downloader/gb0;I)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c;->t:Lcom/shabakaty/downloader/pq1;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/c;->s:Landroid/content/Context;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/gb0;->W0()Z

    move-result v2

    const/high16 v3, 0x8000000

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p1, Lcom/shabakaty/downloader/gb0;->t:Landroid/app/PendingIntent;

    goto :goto_0

    .line 4
    :cond_0
    iget v2, p1, Lcom/shabakaty/downloader/gb0;->s:I

    const/4 v5, 0x0

    .line 5
    invoke-virtual {v0, v1, v2, v5}, Lcom/shabakaty/downloader/pq1;->b(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v5

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v1, v4, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    .line 7
    iget p1, p1, Lcom/shabakaty/downloader/gb0;->s:I

    .line 8
    sget v5, Lcom/google/android/gms/common/api/GoogleApiActivity;->s:I

    .line 9
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/google/android/gms/common/api/GoogleApiActivity;

    invoke-direct {v5, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v6, "pending_intent"

    .line 10
    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "failing_client_id"

    .line 11
    invoke-virtual {v5, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p2, 0x1

    const-string v2, "notify_manager"

    .line 12
    invoke-virtual {v5, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 13
    invoke-static {v1, v4, v5, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, p1, v2}, Lcom/shabakaty/downloader/pq1;->i(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    const/4 v4, 0x1

    :cond_2
    return v4
.end method

.method public final e(Lcom/shabakaty/downloader/gb0;I)V
    .locals 3
    .param p1    # Lcom/shabakaty/downloader/gb0;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/api/internal/c;->c(Lcom/shabakaty/downloader/gb0;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final f(Lcom/google/android/gms/common/api/b;)Lcom/google/android/gms/common/api/internal/c$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/b<",
            "*>;)",
            "Lcom/google/android/gms/common/api/internal/c$a<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/common/api/b;->d:Lcom/shabakaty/downloader/j9;

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/c;->x:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/internal/c$a;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/google/android/gms/common/api/internal/c$a;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/common/api/internal/c$a;-><init>(Lcom/google/android/gms/common/api/internal/c;Lcom/google/android/gms/common/api/b;)V

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/c;->x:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/c$a;->o()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/c;->A:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/internal/c$a;->n()V

    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/32 v3, 0x493e0

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    const-string p1, "GoogleApiManager"

    const/16 v2, 0x1f

    const-string v3, "Unknown message id: "

    .line 2
    invoke-static {v2, v3, v0, p1}, Lcom/shabakaty/downloader/me;->a(ILjava/lang/String;ILjava/lang/String;)V

    return v1

    .line 3
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/c$b;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c;->x:Ljava/util/Map;

    .line 5
    iget-object v3, p1, Lcom/google/android/gms/common/api/internal/c$b;->a:Lcom/shabakaty/downloader/j9;

    .line 6
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c;->x:Ljava/util/Map;

    .line 8
    iget-object v3, p1, Lcom/google/android/gms/common/api/internal/c$b;->a:Lcom/shabakaty/downloader/j9;

    .line 9
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/c$a;

    .line 10
    iget-object v3, v0, Lcom/google/android/gms/common/api/internal/c$a;->j:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 11
    iget-object v3, v0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 12
    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    const/16 v4, 0xf

    .line 13
    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 14
    iget-object v3, v0, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 15
    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    const/16 v4, 0x10

    .line 16
    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 17
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/c$b;->b:Lcom/shabakaty/downloader/ia1;

    .line 18
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lcom/google/android/gms/common/api/internal/c$a;->a:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    iget-object v4, v0, Lcom/google/android/gms/common/api/internal/c$a;->a:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/api/internal/u;

    .line 20
    instance-of v6, v5, Lcom/google/android/gms/common/api/internal/k;

    if-eqz v6, :cond_0

    .line 21
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/common/api/internal/k;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/common/api/internal/k;->f(Lcom/google/android/gms/common/api/internal/c$a;)[Lcom/shabakaty/downloader/ia1;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 22
    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    .line 23
    aget-object v9, v6, v8

    invoke-static {v9, p1}, Lcom/shabakaty/downloader/q43;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, -0x1

    :goto_2
    if-ltz v8, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_0

    .line 24
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_4
    if-ge v1, v4, :cond_13

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    check-cast v5, Lcom/google/android/gms/common/api/internal/u;

    .line 26
    iget-object v6, v0, Lcom/google/android/gms/common/api/internal/c$a;->a:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 27
    new-instance v6, Lcom/shabakaty/downloader/mw4;

    invoke-direct {v6, p1}, Lcom/shabakaty/downloader/mw4;-><init>(Lcom/shabakaty/downloader/ia1;)V

    invoke-virtual {v5, v6}, Lcom/google/android/gms/common/api/internal/u;->d(Ljava/lang/Exception;)V

    goto :goto_4

    .line 28
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/internal/c$b;

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c;->x:Ljava/util/Map;

    .line 30
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/c$b;->a:Lcom/shabakaty/downloader/j9;

    .line 31
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c;->x:Ljava/util/Map;

    .line 33
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/c$b;->a:Lcom/shabakaty/downloader/j9;

    .line 34
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/c$a;

    .line 35
    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/c$a;->j:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_a

    .line 36
    :cond_5
    iget-boolean p1, v0, Lcom/google/android/gms/common/api/internal/c$a;->i:Z

    if-nez p1, :cond_13

    .line 37
    iget-object p1, v0, Lcom/google/android/gms/common/api/internal/c$a;->b:Lcom/google/android/gms/common/api/a$f;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result p1

    if-nez p1, :cond_6

    .line 38
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/c$a;->n()V

    goto/16 :goto_a

    .line 39
    :cond_6
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/c$a;->q()V

    goto/16 :goto_a

    .line 40
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/y95;

    .line 41
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/c;->x:Ljava/util/Map;

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 43
    throw v5

    .line 44
    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/c;->x:Ljava/util/Map;

    .line 45
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/c$a;

    .line 46
    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/internal/c$a;->h(Z)Z

    .line 47
    throw v5

    .line 48
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c;->x:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 49
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c;->x:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/c$a;

    .line 50
    invoke-virtual {p1, v2}, Lcom/google/android/gms/common/api/internal/c$a;->h(Z)Z

    goto/16 :goto_a

    .line 51
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c;->x:Ljava/util/Map;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c;->x:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/c$a;

    .line 53
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 54
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 55
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->c(Landroid/os/Handler;)V

    .line 56
    iget-boolean v0, p1, Lcom/google/android/gms/common/api/internal/c$a;->i:Z

    if-eqz v0, :cond_13

    .line 57
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/c$a;->s()V

    .line 58
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 59
    iget-object v3, v0, Lcom/google/android/gms/common/api/internal/c;->t:Lcom/shabakaty/downloader/pq1;

    .line 60
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->s:Landroid/content/Context;

    .line 61
    invoke-virtual {v3, v0}, Lcom/shabakaty/downloader/pq1;->d(Landroid/content/Context;)I

    move-result v0

    const/16 v3, 0x12

    if-ne v0, v3, :cond_8

    .line 62
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x15

    const-string v4, "Connection timed out waiting for Google Play services update to complete."

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_5

    .line 63
    :cond_8
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x16

    const-string v4, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v0, v3, v4}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 64
    :goto_5
    iget-object v3, p1, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 65
    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 66
    invoke-static {v3}, Lcom/google/android/gms/common/internal/a;->c(Landroid/os/Handler;)V

    .line 67
    invoke-virtual {p1, v0, v5, v1}, Lcom/google/android/gms/common/api/internal/c$a;->e(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    .line 68
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/c$a;->b:Lcom/google/android/gms/common/api/a$f;

    const-string v0, "Timing out connection while resuming."

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/a$f;->s(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 69
    :pswitch_5
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/c;->A:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/j9;

    .line 70
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/c;->x:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/c$a;

    if-eqz v0, :cond_9

    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/c$a;->b()V

    goto :goto_6

    .line 72
    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/c;->A:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto/16 :goto_a

    .line 73
    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c;->x:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 74
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c;->x:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/internal/c$a;

    .line 75
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 76
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 77
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->c(Landroid/os/Handler;)V

    .line 78
    iget-boolean v0, p1, Lcom/google/android/gms/common/api/internal/c$a;->i:Z

    if-eqz v0, :cond_13

    .line 79
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/c$a;->n()V

    goto/16 :goto_a

    .line 80
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/b;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/c;->f(Lcom/google/android/gms/common/api/b;)Lcom/google/android/gms/common/api/internal/c$a;

    goto/16 :goto_a

    .line 81
    :pswitch_8
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/c;->s:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_13

    .line 82
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/c;->s:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 83
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/a;->a(Landroid/app/Application;)V

    .line 84
    sget-object p1, Lcom/google/android/gms/common/api/internal/a;->v:Lcom/google/android/gms/common/api/internal/a;

    .line 85
    new-instance v0, Lcom/google/android/gms/common/api/internal/l;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/l;-><init>(Lcom/google/android/gms/common/api/internal/c;)V

    .line 86
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    monitor-enter p1

    .line 88
    :try_start_0
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/a;->t:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/a;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    .line 91
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 92
    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 93
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/a;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_b

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_b

    .line 94
    iget-object v0, p1, Lcom/google/android/gms/common/api/internal/a;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 95
    :cond_b
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/a;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_13

    .line 96
    iput-wide v3, p0, Lcom/google/android/gms/common/api/internal/c;->r:J

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    .line 97
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 98
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/gb0;

    .line 99
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/c;->x:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/common/api/internal/c$a;

    .line 100
    iget v6, v4, Lcom/google/android/gms/common/api/internal/c$a;->g:I

    if-ne v6, v0, :cond_c

    goto :goto_7

    :cond_d
    move-object v4, v5

    :goto_7
    if-eqz v4, :cond_f

    .line 101
    iget v0, p1, Lcom/shabakaty/downloader/gb0;->s:I

    const/16 v3, 0xd

    if-ne v0, v3, :cond_e

    .line 102
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x11

    iget-object v6, p0, Lcom/google/android/gms/common/api/internal/c;->t:Lcom/shabakaty/downloader/pq1;

    .line 103
    iget v7, p1, Lcom/shabakaty/downloader/gb0;->s:I

    .line 104
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-boolean v6, Lcom/shabakaty/downloader/uq1;->a:Z

    .line 106
    invoke-static {v7}, Lcom/shabakaty/downloader/gb0;->D1(I)Ljava/lang/String;

    move-result-object v6

    .line 107
    iget-object p1, p1, Lcom/shabakaty/downloader/gb0;->u:Ljava/lang/String;

    const/16 v7, 0x45

    .line 108
    invoke-static {v6, v7}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v7

    invoke-static {p1, v7}, Lcom/shabakaty/downloader/dl3;->a(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "Error resolution was canceled by the user, original error message: "

    const-string v9, ": "

    invoke-static {v7, v8, v6, v9, p1}, Lcom/shabakaty/downloader/nm0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v3, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 109
    iget-object p1, v4, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 110
    iget-object p1, p1, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 111
    invoke-static {p1}, Lcom/google/android/gms/common/internal/a;->c(Landroid/os/Handler;)V

    .line 112
    invoke-virtual {v4, v0, v5, v1}, Lcom/google/android/gms/common/api/internal/c$a;->e(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    goto/16 :goto_a

    .line 113
    :cond_e
    iget-object v0, v4, Lcom/google/android/gms/common/api/internal/c$a;->c:Lcom/shabakaty/downloader/j9;

    .line 114
    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/c;->d(Lcom/shabakaty/downloader/j9;Lcom/shabakaty/downloader/gb0;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 115
    iget-object v0, v4, Lcom/google/android/gms/common/api/internal/c$a;->l:Lcom/google/android/gms/common/api/internal/c;

    .line 116
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 117
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->c(Landroid/os/Handler;)V

    .line 118
    invoke-virtual {v4, p1, v5, v1}, Lcom/google/android/gms/common/api/internal/c$a;->e(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    goto/16 :goto_a

    :cond_f
    const-string p1, "GoogleApiManager"

    const/16 v1, 0x4c

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Could not find API instance "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " while trying to fail enqueued calls."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 120
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/wa5;

    .line 121
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/c;->x:Ljava/util/Map;

    iget-object v1, p1, Lcom/shabakaty/downloader/wa5;->c:Lcom/google/android/gms/common/api/b;

    .line 122
    iget-object v1, v1, Lcom/google/android/gms/common/api/b;->d:Lcom/shabakaty/downloader/j9;

    .line 123
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/c$a;

    if-nez v0, :cond_10

    .line 124
    iget-object v0, p1, Lcom/shabakaty/downloader/wa5;->c:Lcom/google/android/gms/common/api/b;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/internal/c;->f(Lcom/google/android/gms/common/api/b;)Lcom/google/android/gms/common/api/internal/c$a;

    move-result-object v0

    .line 125
    :cond_10
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/c$a;->o()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/c;->w:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v3, p1, Lcom/shabakaty/downloader/wa5;->b:I

    if-eq v1, v3, :cond_11

    .line 126
    iget-object p1, p1, Lcom/shabakaty/downloader/wa5;->a:Lcom/google/android/gms/common/api/internal/u;

    sget-object v1, Lcom/google/android/gms/common/api/internal/c;->D:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/internal/u;->b(Lcom/google/android/gms/common/api/Status;)V

    .line 127
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/c$a;->b()V

    goto :goto_a

    .line 128
    :cond_11
    iget-object p1, p1, Lcom/shabakaty/downloader/wa5;->a:Lcom/google/android/gms/common/api/internal/u;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/c$a;->f(Lcom/google/android/gms/common/api/internal/u;)V

    goto :goto_a

    .line 129
    :pswitch_b
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/c;->x:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/c$a;

    .line 130
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/c$a;->m()V

    .line 131
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/c$a;->n()V

    goto :goto_8

    .line 132
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/ac5;

    .line 133
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    throw v5

    .line 135
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_12

    const-wide/16 v3, 0x2710

    .line 136
    :cond_12
    iput-wide v3, p0, Lcom/google/android/gms/common/api/internal/c;->r:J

    .line 137
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/c;->x:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/j9;

    .line 139
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/c;->B:Landroid/os/Handler;

    .line 140
    invoke-virtual {v3, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v4, p0, Lcom/google/android/gms/common/api/internal/c;->r:J

    .line 141
    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_9

    :cond_13
    :goto_a
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
