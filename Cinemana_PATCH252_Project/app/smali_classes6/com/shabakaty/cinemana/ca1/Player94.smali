.class public final Lcom/shabakaty/cinemana/ca1/Player94;
.super Ljava/lang/Object;
.source "Player94.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/ca1/Player94$State;
    }
.end annotation


# static fields
.field static final frames:Ljava/util/concurrent/ExecutorService;

.field static final states:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lcom/shabakaty/cinemana/ca1/Player94$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Player94;->states:Ljava/util/WeakHashMap;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/cinemana/ca1/Player94;->frames:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ancestor(Landroid/view/View;)Lcom/shabakaty/cinemana/ca1/Player94$State;
    .locals 3

    .line 8
    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.shabakaty.cinemana.player.CinemanaPlayerView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Player94;->ensure(Landroid/view/View;)Lcom/shabakaty/cinemana/ca1/Player94$State;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object p0, v0

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static ensure(Landroid/view/View;)Lcom/shabakaty/cinemana/ca1/Player94$State;
    .locals 3

    .line 7
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Player94;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/ca1/Player94$State;

    if-nez v1, :cond_0

    instance-of v2, p0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    new-instance v1, Lcom/shabakaty/cinemana/ca1/Player94$State;

    move-object v2, p0

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Lcom/shabakaty/cinemana/ca1/Player94$State;-><init>(Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/ca1/Player94$State;->hook()V

    :cond_0
    return-object v1
.end method

.method public static install(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .line 5
    new-instance p1, Lcom/shabakaty/cinemana/ca1/Player94$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/shabakaty/cinemana/ca1/Player94$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$install$0(Landroid/view/View;)V
    .locals 3

    .line 5
    :try_start_0
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Player94;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/cinemana/ca1/Player94$State;

    if-nez v1, :cond_0

    instance-of v2, p0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    new-instance v1, Lcom/shabakaty/cinemana/ca1/Player94$State;

    move-object v2, p0

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-direct {v1, v2}, Lcom/shabakaty/cinemana/ca1/Player94$State;-><init>(Landroid/widget/FrameLayout;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/shabakaty/cinemana/ca1/Player94$State;->hook()V

    iget-object p0, v1, Lcom/shabakaty/cinemana/ca1/Player94$State;->h:Landroid/os/Handler;

    iget-object v0, v1, Lcom/shabakaty/cinemana/ca1/Player94$State;->warm:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static scrubMove(Landroid/widget/SeekBar;ILjava/lang/Object;)V
    .locals 3

    .line 11
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Player94;->ancestor(Landroid/view/View;)Lcom/shabakaty/cinemana/ca1/Player94$State;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->scrubbing:Z

    if-eqz v0, :cond_0

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/Player94$State;->show(J)V

    goto :goto_0

    :cond_0
    const-string p0, "q"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p2, p0, v0}, Lcom/shabakaty/cinemana/ca1/R94;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :goto_0
    return-void
.end method

.method public static scrubStart(Landroid/widget/SeekBar;)V
    .locals 3

    .line 10
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Player94;->ancestor(Landroid/view/View;)Lcom/shabakaty/cinemana/ca1/Player94$State;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/shabakaty/cinemana/ca1/Player94$State;->scrubbing:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/shabakaty/cinemana/ca1/Player94$State;->scrubCancelled:Z

    iput-object p0, v0, Lcom/shabakaty/cinemana/ca1/Player94$State;->scrubBar:Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/cinemana/ca1/Player94$State;->show(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :cond_0
    :goto_0
    return-void
.end method

.method public static scrubStop(Landroid/widget/SeekBar;Ljava/lang/Object;)V
    .locals 6

    .line 12
    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Player94;->ancestor(Landroid/view/View;)Lcom/shabakaty/cinemana/ca1/Player94$State;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/shabakaty/cinemana/ca1/Player94$State;->scrubCancelled:Z

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "q"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgress()I

    move-result p0

    int-to-long v4, p0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-static {p1, v2, v3}, Lcom/shabakaty/cinemana/ca1/R94;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v0, :cond_2

    iput-boolean v1, v0, Lcom/shabakaty/cinemana/ca1/Player94$State;->scrubbing:Z

    invoke-virtual {v0}, Lcom/shabakaty/cinemana/ca1/Player94$State;->hide()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :cond_2
    :goto_0
    return-void
.end method

.method public static seekPreset(Ljava/lang/Object;)V
    .locals 8

    .line 13
    :try_start_0
    const-string v0, "a"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/R94;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_1

    const-string v1, "ca1_94"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "keyframe95"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.shabakaty.downloader.wz3"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-wide v5, 0x7fffffffffffffffL

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v2

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/ca1/R94;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "n"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p0, "seek_preset"

    const-string v1, "previous_sync=true"

    invoke-static {v0, p0, v1}, Lcom/shabakaty/cinemana/ca1/Log94;->event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :goto_1
    return-void
.end method

.method public static takeCapture(Landroid/view/View;)Z
    .locals 2

    .line 9
    sget-object v0, Lcom/shabakaty/cinemana/ca1/Player94;->states:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/shabakaty/cinemana/ca1/Player94$State;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-boolean v1, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->captured:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/shabakaty/cinemana/ca1/Player94$State;->captured:Z

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static touch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 6
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Player94;->ensure(Landroid/view/View;)Lcom/shabakaty/cinemana/ca1/Player94$State;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/shabakaty/cinemana/ca1/Player94$State;->touch(Landroid/view/MotionEvent;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "player_gesture_failed"

    invoke-static {p0, v1, p1}, Lcom/shabakaty/cinemana/ca1/Log94;->event(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
