.class public Lcom/shabakaty/downloader/b3;
.super Ljava/lang/Object;
.source "ActivityLifecycleListener.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field public static r:Lcom/shabakaty/downloader/b3;

.field public static s:Lcom/onesignal/a;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field public static t:Landroid/content/ComponentCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/b3;->s:Lcom/onesignal/a;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/b3;->s:Lcom/onesignal/a;

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityDestroyed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    invoke-static {v1, v2, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    sget-object v1, Lcom/onesignal/a;->e:Ljava/util/Map;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 5
    iget-object v1, v0, Lcom/onesignal/a;->a:Landroid/app/Activity;

    if-ne p1, v1, :cond_0

    .line 6
    iput-object v3, v0, Lcom/onesignal/a;->a:Landroid/app/Activity;

    .line 7
    invoke-virtual {v0}, Lcom/onesignal/a;->c()V

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/onesignal/a;->d()V

    :cond_1
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/b3;->s:Lcom/onesignal/a;

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityPaused: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    invoke-static {v1, v2, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iget-object v1, v0, Lcom/onesignal/a;->a:Landroid/app/Activity;

    if-ne p1, v1, :cond_0

    .line 5
    iput-object v3, v0, Lcom/onesignal/a;->a:Landroid/app/Activity;

    .line 6
    invoke-virtual {v0}, Lcom/onesignal/a;->c()V

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/onesignal/a;->d()V

    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/b3;->s:Lcom/onesignal/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResumed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    invoke-static {v1, v2, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/onesignal/a;->g(Landroid/app/Activity;)V

    .line 5
    invoke-virtual {v0}, Lcom/onesignal/a;->d()V

    .line 6
    invoke-virtual {v0}, Lcom/onesignal/a;->b()V

    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/shabakaty/downloader/b3;->s:Lcom/onesignal/a;

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/b3;->s:Lcom/onesignal/a;

    if-eqz v0, :cond_2

    const/4 v1, 0x6

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityStopped: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 3
    invoke-static {v1, v2, v3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    iget-object v1, v0, Lcom/onesignal/a;->a:Landroid/app/Activity;

    if-ne p1, v1, :cond_0

    .line 5
    iput-object v3, v0, Lcom/onesignal/a;->a:Landroid/app/Activity;

    .line 6
    invoke-virtual {v0}, Lcom/onesignal/a;->c()V

    .line 7
    :cond_0
    sget-object v1, Lcom/onesignal/a;->c:Ljava/util/Map;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/a$b;

    invoke-virtual {v2, p1}, Lcom/onesignal/a$b;->c(Landroid/app/Activity;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/onesignal/a;->d()V

    :cond_2
    return-void
.end method
