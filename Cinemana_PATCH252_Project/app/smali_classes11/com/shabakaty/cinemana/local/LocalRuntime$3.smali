.class Lcom/shabakaty/cinemana/local/LocalRuntime$3;
.super Ljava/lang/Object;
.source "LocalRuntime.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/local/LocalRuntime;->wrap(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$remote:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shabakaty/cinemana/local/LocalRuntime$3;->val$remote:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_39

    const-string v3, "toString"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string v0, "LocalAccountApi"

    return-object v0

    :cond_1c
    const-string v3, "hashCode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_2d
    aget-object v0, v0, v5

    move-object/from16 v2, p1

    if-ne v2, v0, :cond_34

    const/4 v5, 0x1

    :cond_34
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_39
    const-string v3, "I"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    const-string v0, "user.UserSettingsApi"

    invoke-static {}, Lcom/shabakaty/cinemana/local/LocalRuntime;->settings()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/shabakaty/cinemana/local/LocalRuntime;->dto(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4c
    const-string v3, "j"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_da

    const-string v4, "m"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    goto/16 :goto_da

    :cond_5e
    const-string v20, "x"

    const-string v21, "l"

    const-string v6, "a"

    const-string v7, "d"

    const-string v8, "e"

    const-string v9, "t"

    const-string v10, "p"

    const-string v11, "q"

    const-string v12, "v"

    const-string v13, "y"

    const-string v14, "s"

    const-string v15, "B"

    const-string v16, "C"

    const-string v17, "E"

    const-string v18, "f"

    const-string v19, "r"

    filled-new-array/range {v6 .. v21}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    new-instance v3, Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle;

    new-instance v4, Lcom/shabakaty/cinemana/local/LocalRuntime$3$2;

    invoke-direct {v4, v1, v2, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime$3$2;-><init>(Lcom/shabakaty/cinemana/local/LocalRuntime$3;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {v3, v4}, Lcom/shabakaty/cinemana/local/LocalRuntime$LocalSingle;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v3

    :cond_97
    :try_start_97
    iget-object v3, v1, Lcom/shabakaty/cinemana/local/LocalRuntime$3;->val$remote:Ljava/lang/Object;

    move-object/from16 v4, p2

    invoke-virtual {v4, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "A"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b9

    instance-of v4, v3, Lcom/shabakaty/downloader/f74;

    if-eqz v4, :cond_b9

    new-instance v2, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle;

    check-cast v3, Lcom/shabakaty/downloader/f74;

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime$CaptureSingle;-><init>(Lcom/shabakaty/downloader/f74;Ljava/lang/String;)V

    return-object v2

    :cond_b9
    const-string v4, "b"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d3

    instance-of v2, v3, Lcom/shabakaty/downloader/qf1;

    if-eqz v2, :cond_d3

    new-instance v2, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow;

    check-cast v3, Lcom/shabakaty/downloader/qf1;

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime$EpisodeFlow;-><init>(Lcom/shabakaty/downloader/qf1;Ljava/lang/String;)V
    :try_end_d2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_97 .. :try_end_d2} :catch_d4

    return-object v2

    :cond_d3
    return-object v3

    :catch_d4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_da
    :goto_da
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e3

    const-string v2, "parental"

    goto :goto_e5

    :cond_e3
    const-string v2, "translation"

    :goto_e5
    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/shabakaty/cinemana/local/LocalRuntime;->app:Landroid/content/Context;

    const-string v4, "local_settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    sget-object v3, Lcom/shabakaty/cinemana/local/LocalRuntime;->IO:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/shabakaty/cinemana/local/LocalRuntime$3$1;

    invoke-direct {v4, v1, v2, v0}, Lcom/shabakaty/cinemana/local/LocalRuntime$3$1;-><init>(Lcom/shabakaty/cinemana/local/LocalRuntime$3;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    const-string v0, "com.shabakaty.downloader.qv4"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "a"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
