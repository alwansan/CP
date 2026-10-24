.class public Lcom/onesignal/a;
.super Ljava/lang/Object;
.source "ActivityLifecycleHandler.java"

# interfaces
.implements Lcom/onesignal/l0$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/a$d;,
        Lcom/onesignal/a$c;,
        Lcom/onesignal/a$b;
    }
.end annotation


# static fields
.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onesignal/a$b;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onesignal/l0$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onesignal/a$d;",
            ">;"
        }
    .end annotation
.end field

.field public static f:Lcom/onesignal/a$c;


# instance fields
.field public a:Landroid/app/Activity;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public b:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/onesignal/a;->c:Ljava/util/Map;

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/onesignal/a;->d:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/onesignal/a;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/onesignal/a;->a:Landroid/app/Activity;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/onesignal/a;->b:Z

    return-void
.end method

.method public static f(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x6

    const-string v1, "ActivityLifecycleHandler runLostFocusLogic"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/b3;->s:Lcom/onesignal/a;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/onesignal/a;->a:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 4
    sput-boolean v0, Lcom/onesignal/q0;->p:Z

    .line 5
    :cond_1
    new-instance v0, Lcom/onesignal/a$c;

    invoke-direct {v0}, Lcom/onesignal/a$c;-><init>()V

    sput-object v0, Lcom/onesignal/a;->f:Lcom/onesignal/a$c;

    .line 6
    invoke-static {}, Lcom/shabakaty/downloader/h23;->h()Lcom/shabakaty/downloader/h23;

    move-result-object v0

    sget-object v1, Lcom/onesignal/a;->f:Lcom/onesignal/a$c;

    invoke-virtual {v0, p0, v1}, Lcom/shabakaty/downloader/a23;->b(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/onesignal/a$b;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/onesignal/a;->c:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/onesignal/a;->a:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p2, p1}, Lcom/onesignal/a$b;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 8

    const-string v0, "ActivityLifecycleHandler handleFocus, with runnable: "

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/onesignal/a;->f:Lcom/onesignal/a$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nextResumeIsFirstActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onesignal/a;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 2
    invoke-static {v1, v0, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    sget-object v0, Lcom/onesignal/a;->f:Lcom/onesignal/a$c;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-boolean v0, v0, Lcom/onesignal/a$c;->r:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 5
    iget-boolean v0, p0, Lcom/onesignal/a;->b:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "ActivityLifecycleHandler cancel background lost focus sync task"

    .line 6
    invoke-static {v1, v0, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 7
    invoke-static {}, Lcom/shabakaty/downloader/h23;->h()Lcom/shabakaty/downloader/h23;

    move-result-object v0

    sget-object v1, Lcom/onesignal/q0;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/a23;->a(Landroid/content/Context;)V

    goto/16 :goto_4

    :cond_2
    :goto_1
    const-string v0, "ActivityLifecycleHandler reset background state, call app focus"

    .line 8
    invoke-static {v1, v0, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    iput-boolean v4, p0, Lcom/onesignal/a;->b:Z

    .line 10
    sget-object v0, Lcom/onesignal/a;->f:Lcom/onesignal/a$c;

    if-eqz v0, :cond_3

    .line 11
    iput-boolean v4, v0, Lcom/onesignal/a$c;->r:Z

    .line 12
    :cond_3
    sget-object v0, Lcom/onesignal/q0$n;->r:Lcom/onesignal/q0$n;

    const-string v5, "Application on focus"

    .line 13
    invoke-static {v1, v5, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    sput-boolean v3, Lcom/onesignal/q0;->p:Z

    .line 15
    sget-object v5, Lcom/onesignal/q0;->q:Lcom/onesignal/q0$n;

    invoke-virtual {v5, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 16
    sget-object v5, Lcom/onesignal/q0;->q:Lcom/onesignal/q0$n;

    .line 17
    new-instance v6, Ljava/util/ArrayList;

    sget-object v7, Lcom/onesignal/q0;->a:Ljava/util/List;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 18
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onesignal/q0$p;

    .line 19
    invoke-interface {v7, v5}, Lcom/onesignal/q0$p;->a(Lcom/onesignal/q0$n;)V

    goto :goto_2

    .line 20
    :cond_4
    sget-object v5, Lcom/onesignal/q0;->q:Lcom/onesignal/q0$n;

    invoke-virtual {v5, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 21
    sget-object v0, Lcom/onesignal/q0$n;->s:Lcom/onesignal/q0$n;

    sput-object v0, Lcom/onesignal/q0;->q:Lcom/onesignal/q0$n;

    .line 22
    :cond_5
    invoke-static {}, Lcom/onesignal/o;->h()V

    .line 23
    sget-object v0, Lcom/onesignal/q0;->d:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    const/4 v0, 0x5

    const-string v5, "OneSignal was not initialized, ensure to always initialize OneSignal from the onCreate of your Application class."

    .line 24
    invoke-static {v0, v5, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    if-eqz v3, :cond_7

    goto :goto_4

    .line 25
    :cond_7
    sget-object v0, Lcom/onesignal/q0;->z:Lcom/onesignal/i0;

    invoke-virtual {v0}, Lcom/onesignal/i0;->a()Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "Delay onAppFocus logic due to missing remote params"

    .line 26
    invoke-static {v1, v0, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    sget-object v0, Lcom/onesignal/q0;->d:Ljava/lang/String;

    invoke-static {}, Lcom/onesignal/q0;->z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/onesignal/q0;->J(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_4

    .line 28
    :cond_8
    invoke-static {}, Lcom/onesignal/q0;->L()V

    :goto_4
    return-void
.end method

.method public final c()V
    .locals 8

    const-string v0, "ActivityLifecycleHandler Handling lost focus"

    const/4 v1, 0x6

    const/4 v2, 0x0

    .line 1
    invoke-static {v1, v0, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    sget-object v0, Lcom/onesignal/a;->f:Lcom/onesignal/a$c;

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v1, v0, Lcom/onesignal/a$c;->r:Z

    if-eqz v1, :cond_0

    .line 4
    iget-boolean v0, v0, Lcom/onesignal/a$c;->s:Z

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/onesignal/q0;->t()Lcom/onesignal/f;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/onesignal/f;->b()Ljava/lang/Long;

    move-result-object v1

    .line 7
    iget-object v3, v0, Lcom/onesignal/f;->c:Lcom/shabakaty/downloader/b33;

    const-string v4, "Application stopped focus time: "

    invoke-static {v4}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/onesignal/f;->a:Ljava/lang/Long;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " timeElapsed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v3, Lcom/shabakaty/downloader/a33;

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/a33;->a(Ljava/lang/String;)V

    if-nez v1, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    sget-object v3, Lcom/onesignal/q0;->G:Lcom/onesignal/j0;

    .line 9
    iget-object v3, v3, Lcom/onesignal/j0;->a:Lcom/shabakaty/downloader/yh1;

    .line 10
    iget-object v3, v3, Lcom/shabakaty/downloader/yh1;->s:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    const-string v4, "trackers.values"

    invoke-static {v3, v4}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/shabakaty/downloader/c23;

    .line 13
    invoke-virtual {v6}, Lcom/shabakaty/downloader/c23;->f()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/shabakaty/downloader/x23;->c:Lcom/shabakaty/downloader/x23;

    .line 14
    sget-object v7, Lcom/shabakaty/downloader/x23;->a:Ljava/lang/String;

    .line 15
    invoke-static {v6, v7}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v4, v5}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 18
    check-cast v5, Lcom/shabakaty/downloader/c23;

    .line 19
    invoke-virtual {v5}, Lcom/shabakaty/downloader/c23;->e()Lcom/shabakaty/downloader/v23;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 20
    :cond_4
    iget-object v0, v0, Lcom/onesignal/f;->b:Lcom/onesignal/u;

    invoke-virtual {v0, v3}, Lcom/onesignal/u;->b(Ljava/util/List;)Lcom/onesignal/f$c;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 21
    invoke-virtual {v0, v4, v5, v3}, Lcom/onesignal/f$c;->g(JLjava/util/List;)V

    .line 22
    :goto_2
    invoke-static {}, Lcom/shabakaty/downloader/h23;->h()Lcom/shabakaty/downloader/h23;

    move-result-object v0

    sget-object v1, Lcom/onesignal/q0;->b:Landroid/content/Context;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x7

    const-string v4, "OSFocusDelaySync scheduleSyncTask:SYNC_AFTER_BG_DELAY_MS: 2000"

    .line 23
    invoke-static {v3, v4, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v2, 0x7d0

    .line 24
    sget-object v4, Lcom/shabakaty/downloader/a23;->c:Ljava/lang/Object;

    monitor-enter v4

    .line 25
    :try_start_0
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/a23;->f(Landroid/content/Context;J)V

    .line 26
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()V
    .locals 3

    const-string v0, "curActivity is NOW: "

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/a;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    const-string v1, ""

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/onesignal/a;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/onesignal/a;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 2
    invoke-static {v2, v0, v1}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/onesignal/a;->c:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public g(Landroid/app/Activity;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/onesignal/a;->a:Landroid/app/Activity;

    .line 2
    sget-object p1, Lcom/onesignal/a;->c:Ljava/util/Map;

    check-cast p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/a$b;

    iget-object v1, p0, Lcom/onesignal/a;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/onesignal/a$b;->a(Landroid/app/Activity;)V

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/onesignal/a;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 5
    sget-object v0, Lcom/onesignal/a;->d:Ljava/util/Map;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    new-instance v2, Lcom/onesignal/a$d;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onesignal/l0$c;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/onesignal/a$d;-><init>(Lcom/onesignal/l0$b;Lcom/onesignal/l0$c;Ljava/lang/String;Lcom/onesignal/a$a;)V

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8
    sget-object v3, Lcom/onesignal/a;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_1
    return-void
.end method
