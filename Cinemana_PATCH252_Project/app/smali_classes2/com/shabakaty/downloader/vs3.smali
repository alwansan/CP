.class public Lcom/shabakaty/downloader/vs3;
.super Lcom/shabakaty/downloader/yi0;
.source "Responder.java"


# static fields
.field public static u:Ljava/util/logging/Logger;


# instance fields
.field public final s:Lcom/shabakaty/downloader/mi0;

.field public final t:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/vs3;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/vs3;->u:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/d92;Lcom/shabakaty/downloader/mi0;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/yi0;-><init>(Lcom/shabakaty/downloader/d92;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/vs3;->s:Lcom/shabakaty/downloader/mi0;

    .line 3
    sget p1, Lcom/shabakaty/downloader/ki0;->a:I

    if-eq p3, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/shabakaty/downloader/vs3;->t:Z

    return-void
.end method


# virtual methods
.method public e()Ljava/lang/String;
    .locals 3

    const-string v0, "Responder("

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lcom/shabakaty/downloader/d92;->H:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    const-string v2, ")"

    .line 4
    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/vs3;->s:Lcom/shabakaty/downloader/mi0;

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/d92;->E:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    :try_start_0
    iget-object v2, v0, Lcom/shabakaty/downloader/d92;->F:Lcom/shabakaty/downloader/mi0;

    if-ne v2, v1, :cond_0

    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, Lcom/shabakaty/downloader/d92;->F:Lcom/shabakaty/downloader/mi0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/d92;->E:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 8
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 9
    iget-object v2, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 10
    invoke-virtual {v2}, Lcom/shabakaty/downloader/d92;->V()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 11
    :try_start_1
    iget-object v2, p0, Lcom/shabakaty/downloader/vs3;->s:Lcom/shabakaty/downloader/mi0;

    .line 12
    iget-object v2, v2, Lcom/shabakaty/downloader/oi0;->d:Ljava/util/List;

    .line 13
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/qi0;

    .line 14
    sget-object v4, Lcom/shabakaty/downloader/vs3;->u:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 15
    sget-object v4, Lcom/shabakaty/downloader/vs3;->u:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/vs3;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "run() JmDNS responding to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 16
    :cond_1
    iget-boolean v4, p0, Lcom/shabakaty/downloader/vs3;->t:Z

    if-eqz v4, :cond_2

    .line 17
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_2
    iget-object v4, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 19
    invoke-virtual {v3, v4, v1}, Lcom/shabakaty/downloader/qi0;->s(Lcom/shabakaty/downloader/d92;Ljava/util/Set;)V

    goto :goto_0

    .line 20
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 21
    iget-object v4, p0, Lcom/shabakaty/downloader/vs3;->s:Lcom/shabakaty/downloader/mi0;

    .line 22
    iget-object v4, v4, Lcom/shabakaty/downloader/oi0;->e:Ljava/util/List;

    .line 23
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/ri0;

    const/16 v8, 0x32

    .line 24
    invoke-virtual {v5, v8}, Lcom/shabakaty/downloader/ri0;->s(I)J

    move-result-wide v8

    cmp-long v10, v8, v2

    if-gtz v10, :cond_5

    goto :goto_2

    :cond_5
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_4

    .line 25
    invoke-virtual {v1, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 26
    sget-object v5, Lcom/shabakaty/downloader/vs3;->u:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 27
    sget-object v5, Lcom/shabakaty/downloader/vs3;->u:Ljava/util/logging/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/vs3;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "JmDNS Responder Known Answer Removed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    goto :goto_1

    .line 28
    :cond_6
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    .line 29
    sget-object v2, Lcom/shabakaty/downloader/vs3;->u:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 30
    sget-object v2, Lcom/shabakaty/downloader/vs3;->u:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/vs3;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "run() JmDNS responding"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 31
    :cond_7
    new-instance v2, Lcom/shabakaty/downloader/pi0;

    const v3, 0x8400

    iget-boolean v4, p0, Lcom/shabakaty/downloader/vs3;->t:Z

    if-nez v4, :cond_8

    goto :goto_3

    :cond_8
    const/4 v6, 0x0

    :goto_3
    iget-object v4, p0, Lcom/shabakaty/downloader/vs3;->s:Lcom/shabakaty/downloader/mi0;

    .line 32
    iget v4, v4, Lcom/shabakaty/downloader/mi0;->k:I

    .line 33
    invoke-direct {v2, v3, v6, v4}, Lcom/shabakaty/downloader/pi0;-><init>(IZI)V

    .line 34
    iget-object v3, p0, Lcom/shabakaty/downloader/vs3;->s:Lcom/shabakaty/downloader/mi0;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/oi0;->b()I

    move-result v3

    .line 35
    iput v3, v2, Lcom/shabakaty/downloader/oi0;->a:I

    .line 36
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/qi0;

    if-eqz v3, :cond_9

    .line 37
    invoke-virtual {p0, v2, v3}, Lcom/shabakaty/downloader/yi0;->d(Lcom/shabakaty/downloader/pi0;Lcom/shabakaty/downloader/qi0;)Lcom/shabakaty/downloader/pi0;

    move-result-object v2

    goto :goto_4

    .line 38
    :cond_a
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ri0;

    if-eqz v1, :cond_b

    .line 39
    iget-object v3, p0, Lcom/shabakaty/downloader/vs3;->s:Lcom/shabakaty/downloader/mi0;

    invoke-virtual {p0, v2, v3, v1}, Lcom/shabakaty/downloader/yi0;->a(Lcom/shabakaty/downloader/pi0;Lcom/shabakaty/downloader/mi0;Lcom/shabakaty/downloader/ri0;)Lcom/shabakaty/downloader/pi0;

    move-result-object v2

    goto :goto_5

    .line 40
    :cond_c
    invoke-virtual {v2}, Lcom/shabakaty/downloader/oi0;->g()Z

    move-result v0

    if-nez v0, :cond_d

    .line 41
    iget-object v0, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 42
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/d92;->v0(Lcom/shabakaty/downloader/pi0;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    .line 43
    sget-object v1, Lcom/shabakaty/downloader/vs3;->u:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/vs3;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "run() exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    iget-object v0, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 45
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d92;->close()V

    :cond_d
    :goto_6
    return-void

    :catchall_1
    move-exception v1

    .line 46
    iget-object v0, v0, Lcom/shabakaty/downloader/d92;->E:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 47
    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/vs3;->e()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " incomming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/shabakaty/downloader/vs3;->s:Lcom/shabakaty/downloader/mi0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
