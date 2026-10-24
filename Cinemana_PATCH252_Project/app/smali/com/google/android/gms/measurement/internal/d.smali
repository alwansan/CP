.class public final Lcom/google/android/gms/measurement/internal/d;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@19.0.1"

# interfaces
.implements Lcom/shabakaty/downloader/pi6;


# static fields
.field public static volatile H:Lcom/google/android/gms/measurement/internal/d;


# instance fields
.field public volatile A:Ljava/lang/Boolean;

.field public B:Ljava/lang/Boolean;

.field public C:Ljava/lang/Boolean;

.field public volatile D:Z

.field public E:I

.field public final F:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final G:J

.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Lcom/shabakaty/downloader/wt2;

.field public final g:Lcom/shabakaty/downloader/hg5;

.field public final h:Lcom/google/android/gms/measurement/internal/c;

.field public final i:Lcom/google/android/gms/measurement/internal/b;

.field public final j:Lcom/shabakaty/downloader/de6;

.field public final k:Lcom/shabakaty/downloader/su6;

.field public final l:Lcom/google/android/gms/measurement/internal/f;

.field public final m:Lcom/shabakaty/downloader/e66;

.field public final n:Lcom/shabakaty/downloader/x30;

.field public final o:Lcom/shabakaty/downloader/aq6;

.field public final p:Lcom/shabakaty/downloader/vn6;

.field public final q:Lcom/shabakaty/downloader/vz5;

.field public final r:Lcom/shabakaty/downloader/io6;

.field public final s:Ljava/lang/String;

.field public t:Lcom/shabakaty/downloader/z56;

.field public u:Lcom/shabakaty/downloader/zs6;

.field public v:Lcom/shabakaty/downloader/ti5;

.field public w:Lcom/google/android/gms/measurement/internal/a;

.field public x:Z

.field public y:Ljava/lang/Boolean;

.field public z:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/sj6;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/d;->x:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/d;->F:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    iget-object v1, p1, Lcom/shabakaty/downloader/sj6;->a:Landroid/content/Context;

    new-instance v2, Lcom/shabakaty/downloader/wt2;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/wt2;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/d;->f:Lcom/shabakaty/downloader/wt2;

    sput-object v2, Lcom/shabakaty/downloader/iq6;->a:Lcom/shabakaty/downloader/wt2;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    iget-object v2, p1, Lcom/shabakaty/downloader/sj6;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/d;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/shabakaty/downloader/sj6;->c:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/d;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/shabakaty/downloader/sj6;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/d;->d:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/shabakaty/downloader/sj6;->h:Z

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/d;->e:Z

    iget-object v2, p1, Lcom/shabakaty/downloader/sj6;->e:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/d;->A:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/shabakaty/downloader/sj6;->j:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/measurement/internal/d;->s:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/d;->D:Z

    iget-object v3, p1, Lcom/shabakaty/downloader/sj6;->g:Lcom/shabakaty/downloader/ow5;

    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/shabakaty/downloader/ow5;->x:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    const-string v5, "measurementEnabled"

    .line 3
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 4
    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_0

    .line 5
    check-cast v4, Ljava/lang/Boolean;

    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/d;->B:Ljava/lang/Boolean;

    :cond_0
    iget-object v3, v3, Lcom/shabakaty/downloader/ow5;->x:Landroid/os/Bundle;

    const-string v4, "measurementDeactivated"

    .line 6
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 7
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_1

    .line 8
    check-cast v3, Ljava/lang/Boolean;

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/d;->C:Ljava/lang/Boolean;

    .line 9
    :cond_1
    sget-object v3, Lcom/shabakaty/downloader/on6;->f:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/shabakaty/downloader/on6;->g:Lcom/shabakaty/downloader/ln6;

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    move-object v5, v1

    :goto_0
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/shabakaty/downloader/ln6;->a()Landroid/content/Context;

    move-result-object v4

    if-eq v4, v5, :cond_5

    .line 11
    :cond_3
    invoke-static {}, Lcom/shabakaty/downloader/fl6;->d()V

    .line 12
    invoke-static {}, Lcom/shabakaty/downloader/tn6;->c()V

    .line 13
    const-class v4, Lcom/shabakaty/downloader/fm6;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v6, Lcom/shabakaty/downloader/fm6;->c:Lcom/shabakaty/downloader/fm6;

    if-eqz v6, :cond_4

    .line 14
    iget-object v7, v6, Lcom/shabakaty/downloader/fm6;->a:Landroid/content/Context;

    if-eqz v7, :cond_4

    iget-object v6, v6, Lcom/shabakaty/downloader/fm6;->b:Landroid/database/ContentObserver;

    if-eqz v6, :cond_4

    .line 15
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/shabakaty/downloader/fm6;->c:Lcom/shabakaty/downloader/fm6;

    iget-object v7, v7, Lcom/shabakaty/downloader/fm6;->b:Landroid/database/ContentObserver;

    invoke-virtual {v6, v7}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_4
    const/4 v6, 0x0

    sput-object v6, Lcom/shabakaty/downloader/fm6;->c:Lcom/shabakaty/downloader/fm6;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4

    .line 16
    new-instance v4, Lcom/shabakaty/downloader/sm6;

    .line 17
    invoke-direct {v4, v5, v0}, Lcom/shabakaty/downloader/sm6;-><init>(Landroid/content/Context;I)V

    .line 18
    invoke-static {v4}, Lcom/shabakaty/downloader/tp6;->h(Lcom/shabakaty/downloader/fp6;)Lcom/shabakaty/downloader/fp6;

    move-result-object v4

    new-instance v6, Lcom/shabakaty/downloader/ck6;

    .line 19
    invoke-direct {v6, v5, v4}, Lcom/shabakaty/downloader/ck6;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/fp6;)V

    sput-object v6, Lcom/shabakaty/downloader/on6;->g:Lcom/shabakaty/downloader/ln6;

    sget-object v4, Lcom/shabakaty/downloader/on6;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 21
    :cond_5
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 22
    sget-object v3, Lcom/shabakaty/downloader/mn0;->a:Lcom/shabakaty/downloader/mn0;

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    iget-object v3, p1, Lcom/shabakaty/downloader/sj6;->i:Ljava/lang/Long;

    if-eqz v3, :cond_6

    .line 23
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_1

    .line 24
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 25
    :goto_1
    iput-wide v3, p0, Lcom/google/android/gms/measurement/internal/d;->G:J

    new-instance v3, Lcom/shabakaty/downloader/hg5;

    .line 26
    invoke-direct {v3, p0}, Lcom/shabakaty/downloader/hg5;-><init>(Lcom/google/android/gms/measurement/internal/d;)V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 27
    new-instance v3, Lcom/google/android/gms/measurement/internal/c;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/c;-><init>(Lcom/google/android/gms/measurement/internal/d;)V

    .line 28
    invoke-virtual {v3}, Lcom/shabakaty/downloader/mi6;->i()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/d;->h:Lcom/google/android/gms/measurement/internal/c;

    new-instance v3, Lcom/google/android/gms/measurement/internal/b;

    .line 29
    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/b;-><init>(Lcom/google/android/gms/measurement/internal/d;)V

    .line 30
    invoke-virtual {v3}, Lcom/shabakaty/downloader/mi6;->i()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/d;->i:Lcom/google/android/gms/measurement/internal/b;

    .line 31
    new-instance v3, Lcom/google/android/gms/measurement/internal/f;

    invoke-direct {v3, p0}, Lcom/google/android/gms/measurement/internal/f;-><init>(Lcom/google/android/gms/measurement/internal/d;)V

    .line 32
    invoke-virtual {v3}, Lcom/shabakaty/downloader/mi6;->i()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/d;->l:Lcom/google/android/gms/measurement/internal/f;

    .line 33
    new-instance v3, Lcom/shabakaty/downloader/e66;

    invoke-direct {v3, p0}, Lcom/shabakaty/downloader/e66;-><init>(Lcom/google/android/gms/measurement/internal/d;)V

    .line 34
    invoke-virtual {v3}, Lcom/shabakaty/downloader/mi6;->i()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/d;->m:Lcom/shabakaty/downloader/e66;

    new-instance v3, Lcom/shabakaty/downloader/vz5;

    .line 35
    invoke-direct {v3, p0}, Lcom/shabakaty/downloader/vz5;-><init>(Lcom/google/android/gms/measurement/internal/d;)V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/d;->q:Lcom/shabakaty/downloader/vz5;

    new-instance v3, Lcom/shabakaty/downloader/aq6;

    .line 36
    invoke-direct {v3, p0}, Lcom/shabakaty/downloader/aq6;-><init>(Lcom/google/android/gms/measurement/internal/d;)V

    .line 37
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka6;->g()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/d;->o:Lcom/shabakaty/downloader/aq6;

    new-instance v3, Lcom/shabakaty/downloader/vn6;

    .line 38
    invoke-direct {v3, p0}, Lcom/shabakaty/downloader/vn6;-><init>(Lcom/google/android/gms/measurement/internal/d;)V

    .line 39
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka6;->g()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/d;->p:Lcom/shabakaty/downloader/vn6;

    new-instance v3, Lcom/shabakaty/downloader/su6;

    .line 40
    invoke-direct {v3, p0}, Lcom/shabakaty/downloader/su6;-><init>(Lcom/google/android/gms/measurement/internal/d;)V

    .line 41
    invoke-virtual {v3}, Lcom/shabakaty/downloader/ka6;->g()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/d;->k:Lcom/shabakaty/downloader/su6;

    new-instance v3, Lcom/shabakaty/downloader/io6;

    .line 42
    invoke-direct {v3, p0}, Lcom/shabakaty/downloader/io6;-><init>(Lcom/google/android/gms/measurement/internal/d;)V

    .line 43
    invoke-virtual {v3}, Lcom/shabakaty/downloader/mi6;->i()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/d;->r:Lcom/shabakaty/downloader/io6;

    .line 44
    new-instance v3, Lcom/shabakaty/downloader/de6;

    invoke-direct {v3, p0}, Lcom/shabakaty/downloader/de6;-><init>(Lcom/google/android/gms/measurement/internal/d;)V

    .line 45
    invoke-virtual {v3}, Lcom/shabakaty/downloader/mi6;->i()V

    iput-object v3, p0, Lcom/google/android/gms/measurement/internal/d;->j:Lcom/shabakaty/downloader/de6;

    iget-object v4, p1, Lcom/shabakaty/downloader/sj6;->g:Lcom/shabakaty/downloader/ow5;

    if-eqz v4, :cond_7

    iget-wide v4, v4, Lcom/shabakaty/downloader/ow5;->s:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_7

    goto :goto_2

    :cond_7
    const/4 v0, 0x1

    .line 46
    :goto_2
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_9

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->w()Lcom/shabakaty/downloader/vn6;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    .line 48
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Landroid/app/Application;

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    .line 49
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Application;

    iget-object v4, v1, Lcom/shabakaty/downloader/vn6;->c:Lcom/shabakaty/downloader/rn6;

    if-nez v4, :cond_8

    .line 50
    new-instance v4, Lcom/shabakaty/downloader/rn6;

    invoke-direct {v4, v1}, Lcom/shabakaty/downloader/rn6;-><init>(Lcom/shabakaty/downloader/vn6;)V

    iput-object v4, v1, Lcom/shabakaty/downloader/vn6;->c:Lcom/shabakaty/downloader/rn6;

    :cond_8
    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/shabakaty/downloader/vn6;->c:Lcom/shabakaty/downloader/rn6;

    .line 51
    invoke-virtual {v2, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, v1, Lcom/shabakaty/downloader/vn6;->c:Lcom/shabakaty/downloader/rn6;

    .line 52
    invoke-virtual {v2, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 54
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->n:Lcom/shabakaty/downloader/s66;

    const-string v1, "Registered activity lifecycle callback"

    .line 55
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    goto :goto_3

    .line 56
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->b()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    .line 57
    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/b;->i:Lcom/shabakaty/downloader/s66;

    const-string v1, "Application context is not an Application"

    .line 58
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/s66;->c(Ljava/lang/String;)V

    .line 59
    :cond_a
    :goto_3
    new-instance v0, Lcom/shabakaty/downloader/md7;

    .line 60
    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/md7;-><init>(Lcom/google/android/gms/measurement/internal/d;Lcom/shabakaty/downloader/sj6;)V

    invoke-virtual {v3, v0}, Lcom/shabakaty/downloader/de6;->r(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 61
    :try_start_3
    monitor-exit v4

    throw p1

    :catchall_1
    move-exception p1

    .line 62
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public static final g()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final h(Lcom/google/android/gms/measurement/internal/e;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final i(Lcom/shabakaty/downloader/ka6;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ka6;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1b

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-static {v2, v1, p0}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    .line 5
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final j(Lcom/shabakaty/downloader/mi6;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/mi6;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1b

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-static {v2, v1, p0}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    .line 4
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static v(Landroid/content/Context;Lcom/shabakaty/downloader/ow5;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/d;
    .locals 12

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/shabakaty/downloader/ow5;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/shabakaty/downloader/ow5;->w:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/ow5;

    iget-wide v2, p1, Lcom/shabakaty/downloader/ow5;->r:J

    iget-wide v4, p1, Lcom/shabakaty/downloader/ow5;->s:J

    iget-boolean v6, p1, Lcom/shabakaty/downloader/ow5;->t:Z

    iget-object v7, p1, Lcom/shabakaty/downloader/ow5;->u:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/shabakaty/downloader/ow5;->x:Landroid/os/Bundle;

    const/4 v11, 0x0

    move-object v1, v0

    .line 1
    invoke-direct/range {v1 .. v11}, Lcom/shabakaty/downloader/ow5;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    move-object p1, v0

    :cond_1
    const-string v0, "null reference"

    .line 2
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null reference"

    .line 4
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/google/android/gms/measurement/internal/d;->H:Lcom/google/android/gms/measurement/internal/d;

    if-nez v0, :cond_3

    const-class v0, Lcom/google/android/gms/measurement/internal/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/d;->H:Lcom/google/android/gms/measurement/internal/d;

    if-nez v1, :cond_2

    new-instance v1, Lcom/shabakaty/downloader/sj6;

    .line 6
    invoke-direct {v1, p0, p1, p2}, Lcom/shabakaty/downloader/sj6;-><init>(Landroid/content/Context;Lcom/shabakaty/downloader/ow5;Ljava/lang/Long;)V

    new-instance p0, Lcom/google/android/gms/measurement/internal/d;

    .line 7
    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/d;-><init>(Lcom/shabakaty/downloader/sj6;)V

    sput-object p0, Lcom/google/android/gms/measurement/internal/d;->H:Lcom/google/android/gms/measurement/internal/d;

    .line 8
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    if-eqz p1, :cond_4

    .line 9
    iget-object p0, p1, Lcom/shabakaty/downloader/ow5;->x:Landroid/os/Bundle;

    if-eqz p0, :cond_4

    const-string p2, "dataCollectionDefaultEnabled"

    .line 10
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/google/android/gms/measurement/internal/d;->H:Lcom/google/android/gms/measurement/internal/d;

    const-string p2, "null reference"

    .line 11
    invoke-static {p0, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    sget-object p0, Lcom/google/android/gms/measurement/internal/d;->H:Lcom/google/android/gms/measurement/internal/d;

    iget-object p1, p1, Lcom/shabakaty/downloader/ow5;->x:Landroid/os/Bundle;

    const-string p2, "dataCollectionDefaultEnabled"

    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 14
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/d;->A:Ljava/lang/Boolean;

    .line 15
    :cond_4
    :goto_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/d;->H:Lcom/google/android/gms/measurement/internal/d;

    const-string p1, "null reference"

    .line 16
    invoke-static {p0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    sget-object p0, Lcom/google/android/gms/measurement/internal/d;->H:Lcom/google/android/gms/measurement/internal/d;

    return-object p0
.end method


# virtual methods
.method public final A()Lcom/shabakaty/downloader/su6;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->k:Lcom/shabakaty/downloader/su6;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/d;->i(Lcom/shabakaty/downloader/ka6;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->k:Lcom/shabakaty/downloader/su6;

    return-object v0
.end method

.method public final B()Lcom/google/android/gms/measurement/internal/f;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->l:Lcom/google/android/gms/measurement/internal/f;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/d;->h(Lcom/google/android/gms/measurement/internal/e;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->l:Lcom/google/android/gms/measurement/internal/f;

    return-object v0
.end method

.method public final a()Lcom/shabakaty/downloader/de6;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->j:Lcom/shabakaty/downloader/de6;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/d;->j(Lcom/shabakaty/downloader/mi6;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->j:Lcom/shabakaty/downloader/de6;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/measurement/internal/b;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->i:Lcom/google/android/gms/measurement/internal/b;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/d;->j(Lcom/shabakaty/downloader/mi6;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->i:Lcom/google/android/gms/measurement/internal/b;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->A:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->A:Ljava/lang/Boolean;

    .line 1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->n()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->b:Ljava/lang/String;

    .line 1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 8

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/d;->x:Z

    if-eqz v0, :cond_6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/de6;->e()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->y:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/d;->z:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    .line 3
    check-cast v0, Lcom/shabakaty/downloader/mn0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/d;->z:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    .line 6
    check-cast v0, Lcom/shabakaty/downloader/mn0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/d;->z:J

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/f;->Q(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/f;->Q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    .line 11
    invoke-static {v0}, Lcom/shabakaty/downloader/z85;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/q93;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/q93;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 12
    invoke-virtual {v0}, Lcom/shabakaty/downloader/hg5;->z()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/f;->W(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/f;->X(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->y:Ljava/lang/Boolean;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->B()Lcom/google/android/gms/measurement/internal/f;

    move-result-object v0

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->r()Lcom/google/android/gms/measurement/internal/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/a;->n()Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->r()Lcom/google/android/gms/measurement/internal/a;

    move-result-object v4

    .line 20
    invoke-virtual {v4}, Lcom/shabakaty/downloader/ka6;->f()V

    iget-object v4, v4, Lcom/google/android/gms/measurement/internal/a;->l:Ljava/lang/String;

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->r()Lcom/google/android/gms/measurement/internal/a;

    move-result-object v5

    .line 22
    invoke-virtual {v5}, Lcom/shabakaty/downloader/ka6;->f()V

    iget-object v6, v5, Lcom/google/android/gms/measurement/internal/a;->m:Ljava/lang/String;

    const-string v7, "null reference"

    .line 23
    invoke-static {v6, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/a;->m:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v3, v4, v5}, Lcom/google/android/gms/measurement/internal/f;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->r()Lcom/google/android/gms/measurement/internal/a;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ka6;->f()V

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/a;->l:Ljava/lang/String;

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    .line 29
    :cond_4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->y:Ljava/lang/Boolean;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->y:Ljava/lang/Boolean;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    .line 31
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k()Lcom/shabakaty/downloader/x30;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->n:Lcom/shabakaty/downloader/x30;

    return-object v0
.end method

.method public final l()Lcom/shabakaty/downloader/wt2;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->f:Lcom/shabakaty/downloader/wt2;

    return-object v0
.end method

.method public final m()Landroid/content/Context;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final n()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/de6;->e()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/hg5;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->C:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    return v0

    .line 4
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->a()Lcom/shabakaty/downloader/de6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/de6;->e()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/d;->D:Z

    if-nez v0, :cond_3

    const/16 v0, 0x8

    return v0

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/d;->u()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c;->q()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x3

    return v0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/e;->a:Lcom/google/android/gms/measurement/internal/d;

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/d;->f:Lcom/shabakaty/downloader/wt2;

    const-string v2, "firebase_analytics_collection_enabled"

    .line 7
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/hg5;->t(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 8
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x4

    return v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->B:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x5

    return v0

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    const/4 v2, 0x0

    .line 10
    sget-object v3, Lcom/shabakaty/downloader/d46;->T:Lcom/shabakaty/downloader/z36;

    invoke-virtual {v0, v2, v3}, Lcom/shabakaty/downloader/hg5;->v(Ljava/lang/String;Lcom/shabakaty/downloader/z36;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->A:Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->A:Ljava/lang/Boolean;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const/4 v0, 0x7

    return v0

    :cond_b
    return v1
.end method

.method public final o()Lcom/shabakaty/downloader/vz5;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->q:Lcom/shabakaty/downloader/vz5;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    .line 1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p()Lcom/shabakaty/downloader/hg5;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->g:Lcom/shabakaty/downloader/hg5;

    return-object v0
.end method

.method public final q()Lcom/shabakaty/downloader/ti5;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->v:Lcom/shabakaty/downloader/ti5;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/d;->j(Lcom/shabakaty/downloader/mi6;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->v:Lcom/shabakaty/downloader/ti5;

    return-object v0
.end method

.method public final r()Lcom/google/android/gms/measurement/internal/a;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->w:Lcom/google/android/gms/measurement/internal/a;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/d;->i(Lcom/shabakaty/downloader/ka6;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->w:Lcom/google/android/gms/measurement/internal/a;

    return-object v0
.end method

.method public final s()Lcom/shabakaty/downloader/z56;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->t:Lcom/shabakaty/downloader/z56;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/d;->i(Lcom/shabakaty/downloader/ka6;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->t:Lcom/shabakaty/downloader/z56;

    return-object v0
.end method

.method public final t()Lcom/shabakaty/downloader/e66;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->m:Lcom/shabakaty/downloader/e66;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/d;->h(Lcom/google/android/gms/measurement/internal/e;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->m:Lcom/shabakaty/downloader/e66;

    return-object v0
.end method

.method public final u()Lcom/google/android/gms/measurement/internal/c;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->h:Lcom/google/android/gms/measurement/internal/c;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/d;->h(Lcom/google/android/gms/measurement/internal/e;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->h:Lcom/google/android/gms/measurement/internal/c;

    return-object v0
.end method

.method public final w()Lcom/shabakaty/downloader/vn6;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->p:Lcom/shabakaty/downloader/vn6;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/d;->i(Lcom/shabakaty/downloader/ka6;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->p:Lcom/shabakaty/downloader/vn6;

    return-object v0
.end method

.method public final x()Lcom/shabakaty/downloader/io6;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->r:Lcom/shabakaty/downloader/io6;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/d;->j(Lcom/shabakaty/downloader/mi6;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->r:Lcom/shabakaty/downloader/io6;

    return-object v0
.end method

.method public final y()Lcom/shabakaty/downloader/aq6;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->o:Lcom/shabakaty/downloader/aq6;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/d;->i(Lcom/shabakaty/downloader/ka6;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->o:Lcom/shabakaty/downloader/aq6;

    return-object v0
.end method

.method public final z()Lcom/shabakaty/downloader/zs6;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->u:Lcom/shabakaty/downloader/zs6;

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/d;->i(Lcom/shabakaty/downloader/ka6;)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/d;->u:Lcom/shabakaty/downloader/zs6;

    return-object v0
.end method
