.class Lcom/shabakaty/cinemana/ca1/ThemeEngine142$1;
.super Ljava/lang/Object;
.source "ThemeEngine142.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->install(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 95
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->access$000()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->access$000()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->apply(Landroid/app/Activity;)V

    .line 97
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 103
    invoke-static {}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->access$000()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->access$100()Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->access$102(Landroid/app/Activity;)Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 100
    return-void
.end method

.method public onActivityPreCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 92
    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->prepare(Landroid/app/Activity;)V

    .line 93
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 99
    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/StartupUpdate160;->lifecycleResumed(Landroid/app/Activity;)V

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->access$102(Landroid/app/Activity;)Landroid/app/Activity;

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->apply(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 102
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 98
    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/StartupUpdate160;->lifecycleStarted(Landroid/app/Activity;)V

    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/ThemeEngine142;->apply(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 101
    invoke-static {p1}, Lcom/shabakaty/cinemana/ca1/StartupUpdate160;->lifecycleStopped(Landroid/app/Activity;)V

    return-void
.end method
