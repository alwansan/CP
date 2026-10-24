.class public Lcom/onesignal/a$c;
.super Ljava/lang/Object;
.source "ActivityLifecycleHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public r:Z

.field public s:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x6

    const-string v1, "ActivityLifecycleHandler running AppFocusRunnable"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcom/onesignal/a$c;->r:Z

    .line 3
    sget-object v3, Lcom/onesignal/a;->c:Ljava/util/Map;

    .line 4
    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/onesignal/a$b;

    invoke-virtual {v4}, Lcom/onesignal/a$b;->b()V

    goto :goto_0

    :cond_0
    const-string v3, "Application lost focus initDone: "

    .line 6
    invoke-static {v3}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/onesignal/q0;->o:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v0, v3, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 8
    sput-boolean v0, Lcom/onesignal/q0;->p:Z

    .line 9
    sget-object v0, Lcom/onesignal/q0$n;->t:Lcom/onesignal/q0$n;

    sput-object v0, Lcom/onesignal/q0;->q:Lcom/onesignal/q0$n;

    .line 10
    sget-object v0, Lcom/onesignal/q0;->y:Lcom/shabakaty/downloader/c21;

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 13
    invoke-static {v2, v3}, Lcom/onesignal/q0;->W(J)V

    .line 14
    invoke-static {}, Lcom/onesignal/o;->h()V

    .line 15
    sget-boolean v0, Lcom/onesignal/q0;->o:Z

    if-nez v0, :cond_1

    .line 16
    sget-object v0, Lcom/onesignal/q0;->C:Lcom/shabakaty/downloader/g43;

    const-string v2, "onAppLostFocus()"

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/g43;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    sget-object v0, Lcom/onesignal/q0;->u:Lcom/shabakaty/downloader/b33;

    check-cast v0, Lcom/shabakaty/downloader/a33;

    const-string v2, "Waiting for remote params. Moving onAppLostFocus() operation to a pending task queue."

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/a33;->b(Ljava/lang/String;)V

    .line 18
    sget-object v0, Lcom/onesignal/q0;->C:Lcom/shabakaty/downloader/g43;

    new-instance v2, Lcom/shabakaty/downloader/i73;

    invoke-direct {v2}, Lcom/shabakaty/downloader/i73;-><init>()V

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/f43;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 19
    :cond_1
    invoke-static {}, Lcom/onesignal/q0;->h()V

    .line 20
    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/onesignal/a$c;->s:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "AppFocusRunnable{backgrounded="

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/onesignal/a$c;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", completed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/onesignal/a$c;->s:Z

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/xh2;->a(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
