.class public final Lcom/shabakaty/cinemana/ca1/Episodes107;
.super Ljava/lang/Object;
.source "Episodes107.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/cinemana/ca1/Episodes107$Sink;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static badge(Ljava/lang/Object;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    :try_start_0
    const-string v0, "O"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getParent"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "ca1_episode_badge107"

    aput-object v4, v3, v2

    const-string v5, "findViewWithTag"

    invoke-static {v0, v5, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz p1, :cond_1

    const-string p1, "U"

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Episodes107;->label(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    .line 111
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const-string v5, "setVisibility"

    if-eqz p1, :cond_3

    if-eqz v3, :cond_2

    new-array p0, v1, [Ljava/lang/Object;

    const/16 p1, 0x8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v2

    invoke-static {v3, v5, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    .line 112
    :cond_3
    if-nez v3, :cond_4

    const-string p1, "getContext"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    new-array v3, v1, [Ljava/lang/Object;

    aput-object p1, v3, v2

    const-string p1, "android.widget.TextView"

    invoke-static {p1, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-array p1, v1, [Ljava/lang/Object;

    aput-object v4, p1, v2

    const-string v4, "setTag"

    invoke-static {v3, v4, p1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string p1, "getResources"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, p1, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v4, "getDisplayMetrics"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {p1, v4, v6}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v4, "density"

    invoke-static {p1, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 114
    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v7, -0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/16 v7, 0x33

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    const-string v7, "android.widget.FrameLayout$LayoutParams"

    invoke-static {v7, v6}, Lcom/shabakaty/cinemana/ca1/Continue106;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/high16 v7, 0x40a00000    # 5.0f

    mul-float v7, v7, p1

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "leftMargin"

    invoke-static {v6, v10, v9}, Lcom/shabakaty/cinemana/ca1/Continue106;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "topMargin"

    invoke-static {v6, v10, v9}, Lcom/shabakaty/cinemana/ca1/Continue106;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    new-array v9, v1, [Ljava/lang/Object;

    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    const-string v10, "setTextColor"

    invoke-static {v3, v10, v9}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v9, v1, [Ljava/lang/Object;

    const v10, -0x44fcf0e9    # -0.0019998008f

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    const-string v10, "setBackgroundColor"

    invoke-static {v3, v10, v9}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v9, v1, [Ljava/lang/Object;

    const/high16 v10, 0x41400000    # 12.0f

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v2

    const-string v10, "setTextSize"

    invoke-static {v3, v10, v9}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v10, v9, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v1

    const-string v10, "setTypeface"

    invoke-static {v3, v10, v9}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v9, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    const-string v10, "setGravity"

    invoke-static {v3, v10, v9}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v9, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    const-string v10, "setLayoutDirection"

    invoke-static {v3, v10, v9}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v9, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    const-string v10, "setTextDirection"

    invoke-static {v3, v10, v9}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    const/high16 v10, 0x40000000    # 2.0f

    mul-float v10, v10, p1

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v1

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v8

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v4

    const-string v4, "setPadding"

    invoke-static {v3, v4, v9}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v4, v1, [Ljava/lang/Object;

    const/high16 v7, 0x41a00000    # 20.0f

    mul-float p1, p1, v7

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v4, v2

    const-string p1, "setElevation"

    invoke-static {v3, p1, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, p1, v2

    const-string v4, "setClickable"

    invoke-static {v3, v4, p1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, p1, v2

    const-string v4, "setFocusable"

    invoke-static {v3, v4, p1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array p1, v8, [Ljava/lang/Object;

    aput-object v3, p1, v2

    aput-object v6, p1, v1

    const-string v4, "addView"

    invoke-static {v0, v4, p1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_4
    new-array p1, v1, [Ljava/lang/Object;

    aput-object p0, p1, v2

    const-string p0, "setText"

    invoke-static {v3, p0, p1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v2

    invoke-static {v3, v5, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-void

    .line 109
    :catch_0
    move-exception p0

    return-void
.end method

.method static declared-synchronized cached(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/shabakaty/cinemana/ca1/Episodes107;

    monitor-enter v0

    .line 44
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Episodes107;->episodic(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit v0

    return-object v1

    .line 45
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_1
    const-string v4, "rootSeries"

    invoke-static {p1, v4}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "0"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_3

    .line 46
    :cond_1
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Episodes107;->prefs(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v5, "getString"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "work/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    const-string v4, ""

    aput-object v4, v6, v3

    invoke-static {p0, v5, v6}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v4, "\n"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v4, p0

    if-eqz v4, :cond_4

    const-string v4, "1"

    aget-object v5, p0, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    .line 47
    :cond_2
    const/4 v4, 0x1

    :goto_0
    array-length v5, p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ge v4, v5, :cond_6

    :try_start_2
    aget-object v5, p0, v4

    invoke-static {v5}, Lcom/shabakaty/cinemana/ca1/Episodes107;->raw(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/shabakaty/cinemana/ca1/Episodes107;->sameWork(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 46
    :cond_4
    :goto_2
    monitor-exit v0

    return-object v1

    .line 45
    :cond_5
    :goto_3
    monitor-exit v0

    return-object v1

    .line 48
    :catch_1
    move-exception p0

    :try_start_3
    const-string v4, "continue_context_read107"

    invoke-static {v4, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_6
    new-array p0, v3, [Ljava/util/List;

    aput-object v1, p0, v2

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/Episodes107;->merge(Ljava/lang/Object;[Ljava/util/List;)Ljava/util/List;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object p0

    .line 43
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static callback(Ljava/lang/Class;Lcom/shabakaty/cinemana/ca1/Episodes107$Sink;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/shabakaty/cinemana/ca1/Episodes107$Sink;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 95
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-instance p0, Lcom/shabakaty/cinemana/ca1/Episodes107$$ExternalSyntheticLambda5;

    invoke-direct {p0, p1}, Lcom/shabakaty/cinemana/ca1/Episodes107$$ExternalSyntheticLambda5;-><init>(Lcom/shabakaty/cinemana/ca1/Episodes107$Sink;)V

    invoke-static {v0, v1, p0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static capture(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 23
    :try_start_0
    const-string v0, "a"

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p0, Ljava/lang/Thread;

    new-instance v1, Lcom/shabakaty/cinemana/ca1/Episodes107$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, v0}, Lcom/shabakaty/cinemana/ca1/Episodes107$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/util/List;)V

    const-string p1, "continue-cache107"

    invoke-direct {p0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "continue_context_save107"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static downloads(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    :try_start_0
    const-string v1, "h"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "j"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const-string v5, "rootSeries"

    invoke-static {p1, v5}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "nb"

    invoke-static {p1, v6}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "rootEpisode"

    const-string v8, "id"

    if-eqz v6, :cond_2

    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "0"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v6, v7}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_1
    const-string v7, "collectionID"

    invoke-static {v6, v7}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_2
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v6, "o"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v10, v2

    invoke-static {v1, v6, v10}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 75
    const-string v10, "cinemanaDownloadItem"

    invoke-static {v6, v10}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-static {v10, v7}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_1

    .line 76
    :cond_4
    const-string v11, "b"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const-string v13, "subtitles"

    invoke-static {v6, v13}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v12, v2

    const-string v13, "skippableScenes"

    invoke-static {v6, v13}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v12, v9

    const/4 v6, 0x2

    aput-object p0, v12, v6

    invoke-static {v10, v11, v12}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "path"

    invoke-static {v10, v12}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 77
    const-string v12, "com.shabakaty.cinemana.features.LocalMkvResolver"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    const-string v13, "resolve"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p0, v6, v2

    aput-object v11, v6, v9

    invoke-static {v12, v13, v6}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 78
    if-eqz v6, :cond_5

    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/Episodes107;->localFile(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {v10}, Lcom/shabakaty/cinemana/ca1/Episodes107;->localFile(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    const-string v6, "finished"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v11, v6, v10}, Lcom/shabakaty/cinemana/ca1/Continue106;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    :cond_7
    goto :goto_1

    .line 80
    :cond_8
    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "continue_context_local107"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2
    return-object v0
.end method

.method static episodic(Ljava/lang/Object;)Z
    .locals 1

    .line 13
    const-string v0, "kind"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "2"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 12
    :try_start_0
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Continue106;->text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p0, ""

    return-object p0
.end method

.method static label(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 14
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Episodes107;->episodic(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "season"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "episodeNummer"

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " E"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method static synthetic lambda$callback$9(Lcom/shabakaty/cinemana/ca1/Episodes107$Sink;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 96
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "hashCode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "equals"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    aget-object p0, p3, v2

    if-ne p1, p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "ContinueEpisodes107"

    return-object p0

    :cond_3
    const/4 p1, 0x0

    if-eqz p3, :cond_5

    array-length p2, p3

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    aget-object p2, p3, v2

    goto :goto_1

    :cond_5
    :goto_0
    move-object p2, p1

    :goto_1
    invoke-interface {p0, p2}, Lcom/shabakaty/cinemana/ca1/Episodes107$Sink;->take(Ljava/lang/Object;)V

    return-object p1
.end method

.method static synthetic lambda$capture$1(Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 23
    :try_start_0
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Episodes107;->save(Ljava/lang/Object;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "continue_context_save107"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$merge$0(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 20
    const-string v0, "season"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/cinemana/ca1/Episodes107;->number(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/cinemana/ca1/Episodes107;->number(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v1, v0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "episodeNummer"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Episodes107;->number(Ljava/lang/String;)I

    move-result p0

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Episodes107;->number(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result v1

    :goto_0
    return v1
.end method

.method static synthetic lambda$onPlayer$4(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .line 60
    :try_start_0
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Episodes107;->downloads(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Episodes107;->cached(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 61
    const/4 v2, 0x2

    new-array v3, v2, [Ljava/util/List;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    invoke-static {p1, v3}, Lcom/shabakaty/cinemana/ca1/Episodes107;->merge(Ljava/lang/Object;[Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-static {p2, p3, v3}, Lcom/shabakaty/cinemana/ca1/Episodes107;->post(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/util/List;)V

    .line 63
    invoke-static {p4, p1}, Lcom/shabakaty/cinemana/ca1/Episodes107;->remote(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/util/List;

    aput-object v1, v3, v4

    aput-object p4, v3, v5

    aput-object v0, v3, v2

    invoke-static {p1, v3}, Lcom/shabakaty/cinemana/ca1/Episodes107;->merge(Ljava/lang/Object;[Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 64
    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Episodes107;->save(Ljava/lang/Object;Ljava/util/List;)V

    invoke-static {p2, p3, p1}, Lcom/shabakaty/cinemana/ca1/Episodes107;->post(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/util/List;)V

    const-string p0, "continue_context_ready107"

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "continue_context_load107"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 66
    :goto_0
    return-void
.end method

.method static synthetic lambda$post$10(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/util/List;)V
    .locals 12

    .line 100
    const-string v0, "setValue"

    const-string v1, "nb"

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "isFinishing"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "isDestroyed"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p0, v3, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 101
    :cond_0
    const-string v2, "F"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p0, v2, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "z"

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v5, "getValue"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v3, v5, v6}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    return-void

    .line 102
    :cond_1
    const-string v5, "com.shabakaty.downloader.bi2"

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/shabakaty/cinemana/ca1/Continue106;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/util/List;

    aput-object p2, v7, v4

    invoke-static {v3, v7}, Lcom/shabakaty/cinemana/ca1/Episodes107;->merge(Ljava/lang/Object;[Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "season"

    if-eqz v7, :cond_3

    :try_start_1
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 103
    invoke-static {v7, v8}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    if-nez v9, :cond_2

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v8, "com.shabakaty.downloader.b41"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v1}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v4

    aput-object v7, v10, v6

    invoke-static {v8, v10}, Lcom/shabakaty/cinemana/ca1/Continue106;->make(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    goto :goto_0

    .line 105
    :cond_3
    const-string p1, "B"

    invoke-static {v2, p1}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    new-array p2, v6, [Ljava/lang/Object;

    aput-object v5, p2, v4

    invoke-static {p1, v0, p2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "A"

    invoke-static {v2, p1}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    new-array p2, v6, [Ljava/lang/Object;

    invoke-static {v3, v8}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p2, v4

    invoke-static {p1, v0, p2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "L0"

    new-array p2, v4, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    goto :goto_2

    .line 100
    :cond_4
    :goto_1
    return-void

    .line 106
    :catch_0
    move-exception p0

    const-string p1, "continue_context_ui107"

    invoke-static {p1, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_2
    return-void
.end method

.method static synthetic lambda$remote$5(Ljava/util/List;Ljava/lang/Object;)V
    .locals 1

    .line 87
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$remote$6([Ljava/lang/Throwable;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Object;)V
    .locals 1

    .line 87
    instance-of v0, p2, Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    check-cast p2, Ljava/lang/Throwable;

    aput-object p2, p0, v0

    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method static synthetic lambda$remote$7(Ljava/util/concurrent/CountDownLatch;Ljava/lang/Object;)V
    .locals 0

    .line 87
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method static synthetic lambda$remote$8(Ljava/lang/Object;)V
    .locals 0

    .line 87
    return-void
.end method

.method static synthetic lambda$save$2(Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 28
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$save$3(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 40
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method static localFile(Ljava/lang/String;)Z
    .locals 2

    .line 69
    :try_start_0
    const-string v0, "file:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const/4 p0, 0x0

    return p0
.end method

.method static varargs merge(Ljava/lang/Object;[Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    const-string v3, "nb"

    if-ge v2, v1, :cond_2

    aget-object v4, p1, v2

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/shabakaty/cinemana/ca1/Episodes107;->sameWork(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5, v3}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_2
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Episodes107;->episodic(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0, v3}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Lcom/shabakaty/cinemana/ca1/Episodes107$$ExternalSyntheticLambda6;

    invoke-direct {p1}, Lcom/shabakaty/cinemana/ca1/Episodes107$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p0
.end method

.method static number(Ljava/lang/String;)I
    .locals 0

    .line 22
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const/4 p0, 0x0

    return p0
.end method

.method public static onPlayer(Ljava/lang/Object;)V
    .locals 10

    .line 55
    :try_start_0
    const-string v0, "getIntent"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "getStringExtra"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "ca1_continue_id106"

    aput-object v5, v4, v1

    invoke-static {v0, v2, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_0

    return-void

    .line 56
    :cond_0
    const-string v0, "F"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "z"

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "getValue"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/shabakaty/cinemana/ca1/Episodes107;->episodic(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    .line 57
    :cond_1
    const-string v2, "getApplicationContext"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const-string v1, "g"

    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 58
    new-instance p0, Ljava/lang/Thread;

    new-instance v0, Lcom/shabakaty/cinemana/ca1/Episodes107$$ExternalSyntheticLambda1;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/shabakaty/cinemana/ca1/Episodes107$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "continue-episodes107"

    invoke-direct {p0, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, v3}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "continue_context_start107"

    invoke-static {v0, p0}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 68
    :goto_0
    return-void
.end method

.method static post(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Lcom/shabakaty/cinemana/ca1/Episodes107$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p1, p2}, Lcom/shabakaty/cinemana/ca1/Episodes107$$ExternalSyntheticLambda4;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;Ljava/util/List;)V

    const/4 p0, 0x0

    aput-object v2, v1, p0

    const-string p0, "runOnUiThread"

    invoke-static {v0, p0, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method

.method static prefs(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ca1_episode_context107"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "getSharedPreferences"

    invoke-static {p0, v1, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static raw(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    const-string v0, "recycle"

    const-string v1, "android.util.Base64"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 52
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 51
    aput-object p0, v3, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v6, 0x1

    aput-object p0, v3, v6

    const-string p0, "decode"

    invoke-static {v1, p0, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    const-string v1, "android.os.Parcel"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "obtain"

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v7}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 52
    :try_start_0
    const-string v3, "unmarshall"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p0, v7, v4

    aput-object v5, v7, v6

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v7, v2

    invoke-static {v1, v3, v7}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "setDataPosition"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v5, v2, v4

    invoke-static {v1, p0, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "com.shabakaty.cinemana.domain.models.local.VideoModel"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v2, "CREATOR"

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v2, "createFromParcel"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :catchall_0
    move-exception p0

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw p0
.end method

.method static remote(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 83
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "d"

    const-string v3, "nb"

    const-string v4, "b"

    const-string v5, "rootSeries"

    const-string v6, "h"

    const-string v7, "a"

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 85
    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_0
    invoke-static {v0, v7}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x2

    new-array v13, v12, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v13, v9

    const-string v14, "cacheable-for-authorized, max-age=900"

    const/4 v15, 0x1

    aput-object v14, v13, v15

    invoke-static {v11, v4, v13}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    new-instance v13, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v13, v15}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v14}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    new-array v12, v15, [Ljava/lang/Throwable;

    aput-object v10, v12, v9

    .line 86
    const-string v17, "com.shabakaty.downloader.xc0"

    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-string v17, "com.shabakaty.downloader.j2"

    invoke-static/range {v17 .. v17}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v15

    .line 87
    new-instance v9, Lcom/shabakaty/cinemana/ca1/Episodes107$$ExternalSyntheticLambda7;

    invoke-direct {v9, v14}, Lcom/shabakaty/cinemana/ca1/Episodes107$$ExternalSyntheticLambda7;-><init>(Ljava/util/List;)V

    invoke-static {v10, v9}, Lcom/shabakaty/cinemana/ca1/Episodes107;->callback(Ljava/lang/Class;Lcom/shabakaty/cinemana/ca1/Episodes107$Sink;)Ljava/lang/Object;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v18, v6

    :try_start_1
    new-instance v6, Lcom/shabakaty/cinemana/ca1/Episodes107$$ExternalSyntheticLambda8;

    invoke-direct {v6, v12, v13}, Lcom/shabakaty/cinemana/ca1/Episodes107$$ExternalSyntheticLambda8;-><init>([Ljava/lang/Throwable;Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v10, v6}, Lcom/shabakaty/cinemana/ca1/Episodes107;->callback(Ljava/lang/Class;Lcom/shabakaty/cinemana/ca1/Episodes107$Sink;)Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v19, v8

    :try_start_2
    new-instance v8, Lcom/shabakaty/cinemana/ca1/Episodes107$$ExternalSyntheticLambda9;

    invoke-direct {v8, v13}, Lcom/shabakaty/cinemana/ca1/Episodes107$$ExternalSyntheticLambda9;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-static {v15, v8}, Lcom/shabakaty/cinemana/ca1/Episodes107;->callback(Ljava/lang/Class;Lcom/shabakaty/cinemana/ca1/Episodes107$Sink;)Ljava/lang/Object;

    move-result-object v8

    new-instance v15, Lcom/shabakaty/cinemana/ca1/Episodes107$$ExternalSyntheticLambda10;

    invoke-direct {v15}, Lcom/shabakaty/cinemana/ca1/Episodes107$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v10, v15}, Lcom/shabakaty/cinemana/ca1/Episodes107;->callback(Ljava/lang/Class;Lcom/shabakaty/cinemana/ca1/Episodes107$Sink;)Ljava/lang/Object;

    move-result-object v10

    .line 88
    const-string v15, "g"

    move-object/from16 v20, v7

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v9, v7, v17

    const/4 v9, 0x1

    aput-object v6, v7, v9

    const/4 v6, 0x2

    aput-object v8, v7, v6

    const/4 v6, 0x3

    aput-object v10, v7, v6

    invoke-static {v11, v15, v7}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x19

    invoke-virtual {v13, v7, v8, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    aget-object v7, v12, v6

    if-nez v7, :cond_4

    .line 89
    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "c"

    invoke-static {v6, v7}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v0, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 90
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v8, :cond_3

    :try_start_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    const-string v9, "mapDtoToDomain"

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v8, v12, v11

    invoke-static {v7, v9, v12}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Lcom/shabakaty/cinemana/ca1/Episodes107;->episodic(Ljava/lang/Object;)Z

    move-result v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v11, :cond_1

    :try_start_5
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "0"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    invoke-static {v1, v5}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v5, v9}, Lcom/shabakaty/cinemana/ca1/Continue106;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_1
    :try_start_6
    invoke-static {v1, v8}, Lcom/shabakaty/cinemana/ca1/Episodes107;->sameWork(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    const-string v9, "p"

    const/4 v11, 0x2

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    invoke-static {v8, v3}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    aput-object v13, v14, v15

    move-object/from16 v13, v20

    invoke-static {v0, v13, v14}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v12, v15

    invoke-static {v8, v9, v12}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "episodeDesc"

    invoke-static {v6, v2}, Lcom/shabakaty/cinemana/ca1/Continue106;->get(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v8, v15, v16

    invoke-static {v12, v13, v15}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v8, v9, v12}, Lcom/shabakaty/cinemana/ca1/Continue106;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v9, v19

    :try_start_7
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v19, v9

    move-object/from16 v20, v13

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v1, v18

    goto/16 :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v9, v19

    :goto_1
    move-object/from16 v1, v18

    goto :goto_5

    :cond_3
    move-object/from16 v9, v19

    if-eqz v10, :cond_6

    const/4 v1, 0x0

    :try_start_8
    new-array v0, v1, [Ljava/lang/Object;

    move-object/from16 v1, v18

    invoke-static {v10, v1, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_6

    .line 88
    :cond_4
    move-object/from16 v1, v18

    move-object/from16 v9, v19

    :try_start_9
    new-instance v0, Ljava/io/IOException;

    const-string v2, "episode context request failed"

    const/4 v3, 0x0

    aget-object v4, v12, v3

    invoke-direct {v0, v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    throw v0

    :cond_5
    move-object/from16 v1, v18

    move-object/from16 v9, v19

    new-instance v0, Ljava/io/IOException;

    const-string v2, "episode context timeout"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_2

    .line 91
    :catch_3
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v1, v18

    goto :goto_7

    :catch_4
    move-exception v0

    move-object/from16 v1, v18

    move-object/from16 v9, v19

    goto :goto_5

    :catch_5
    move-exception v0

    move-object/from16 v1, v18

    move-object/from16 v9, v19

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v1, v18

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v9, v8

    move-object/from16 v1, v18

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v1, v6

    :goto_3
    move-object v2, v0

    const/4 v10, 0x0

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v1, v6

    move-object v9, v8

    :goto_4
    const/4 v10, 0x0

    :goto_5
    :try_start_a
    const-string v2, "continue_context_remote107"

    invoke-static {v2, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    if-eqz v10, :cond_6

    const/4 v2, 0x0

    :try_start_b
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v10, v1, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 92
    :cond_6
    :goto_6
    return-object v9

    .line 91
    :catchall_4
    move-exception v0

    :goto_7
    move-object v2, v0

    :goto_8
    if-eqz v10, :cond_7

    const/4 v3, 0x0

    :try_start_c
    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {v10, v1, v0}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_9

    :catch_8
    move-exception v0

    :cond_7
    :goto_9
    throw v2
.end method

.method static sameWork(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3

    .line 15
    const-string v0, "rootSeries"

    invoke-static {p0, v0}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/Episodes107;->episodic(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "nb"

    invoke-static {p0, v2}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v2}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static declared-synchronized save(Ljava/lang/Object;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v0, Lcom/shabakaty/cinemana/ca1/Episodes107;

    monitor-enter v0

    .line 25
    :try_start_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    nop

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/shabakaty/cinemana/ca1/Episodes107;->episodic(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "nb"

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 27
    const-string v3, "rootSeries"

    invoke-static {v2, v3}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 28
    :cond_2
    new-instance v4, Lcom/shabakaty/cinemana/ca1/Episodes107$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/shabakaty/cinemana/ca1/Episodes107$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 30
    :cond_3
    invoke-static {p0}, Lcom/shabakaty/cinemana/ca1/Episodes107;->prefs(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "edit"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {p1, v2, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 31
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 32
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 33
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/shabakaty/cinemana/ca1/Episodes107;->cached(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    const-string v9, "nb"

    invoke-static {v8, v9}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 34
    :cond_4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    const-string v9, "nb"

    invoke-static {v8, v9}, Lcom/shabakaty/cinemana/ca1/Episodes107;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 35
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "1\n"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lcom/shabakaty/cinemana/ca1/Continue106;->pack(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 36
    :cond_6
    const-string v6, "putString"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "work/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v9, v5

    invoke-static {v2, v6, v9}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "putLong"

    new-array v7, v8, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "time/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v5

    invoke-static {v2, v6, v7}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    goto/16 :goto_2

    .line 39
    :cond_7
    const-string p0, "getAll"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1, p0, v1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "time/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 40
    :cond_9
    new-instance v1, Lcom/shabakaty/cinemana/ca1/Episodes107$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/shabakaty/cinemana/ca1/Episodes107$$ExternalSyntheticLambda3;-><init>(Ljava/util/Map;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 41
    const/16 p0, 0x3c

    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_a

    const-string v1, "remove"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {v2, v1, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "remove"

    new-array v4, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "work/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    invoke-static {v2, v1, v4}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p0, p0, 0x1

    goto :goto_7

    :cond_a
    const-string p0, "apply"

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/shabakaty/cinemana/ca1/Continue106;->call(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/Persistence123;->changed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit v0

    return-void

    .line 24
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
