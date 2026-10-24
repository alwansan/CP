.class public Lcom/shabakaty/downloader/xe4;
.super Ljava/lang/Object;
.source "SuasStore.java"

# interfaces
.implements Lcom/shabakaty/downloader/td4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/xe4$c;,
        Lcom/shabakaty/downloader/xe4$b;
    }
.end annotation


# instance fields
.field public a:Lcom/shabakaty/downloader/ec4;

.field public final b:Lcom/shabakaty/downloader/l60;

.field public final c:Lcom/shabakaty/downloader/k60;

.field public final d:Lcom/shabakaty/downloader/db1;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/shabakaty/downloader/qi2;",
            "Lcom/shabakaty/downloader/ui2$c;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/shabakaty/downloader/qi2<",
            "Lcom/shabakaty/downloader/i2<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ec4;Lcom/shabakaty/downloader/l60;Lcom/shabakaty/downloader/k60;Lcom/shabakaty/downloader/db1;Ljava/util/concurrent/Executor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ec4;",
            "Lcom/shabakaty/downloader/l60;",
            "Lcom/shabakaty/downloader/k60;",
            "Lcom/shabakaty/downloader/db1<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/shabakaty/downloader/xe4;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/xe4;->a:Lcom/shabakaty/downloader/ec4;

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/xe4;->b:Lcom/shabakaty/downloader/l60;

    .line 5
    iput-object p3, p0, Lcom/shabakaty/downloader/xe4;->c:Lcom/shabakaty/downloader/k60;

    .line 6
    iput-object p4, p0, Lcom/shabakaty/downloader/xe4;->d:Lcom/shabakaty/downloader/db1;

    .line 7
    iput-object p5, p0, Lcom/shabakaty/downloader/xe4;->e:Ljava/util/concurrent/Executor;

    .line 8
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/xe4;->g:Ljava/util/Set;

    .line 9
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/xe4;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/oc4;Lcom/shabakaty/downloader/qi2;)Lcom/shabakaty/downloader/mf4;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/oc4<",
            "TE;>;",
            "Lcom/shabakaty/downloader/qi2<",
            "TE;>;)",
            "Lcom/shabakaty/downloader/mf4;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xe4;->d:Lcom/shabakaty/downloader/db1;

    sget-object v1, Lcom/shabakaty/downloader/ui2;->a:Ljava/util/logging/Logger;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/ui2$d;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p1, v0, v2}, Lcom/shabakaty/downloader/ui2$d;-><init>(Lcom/shabakaty/downloader/qi2;Lcom/shabakaty/downloader/oc4;Lcom/shabakaty/downloader/db1;Lcom/shabakaty/downloader/ui2$a;)V

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/xe4$c;

    invoke-direct {p1, p0, v1, p2}, Lcom/shabakaty/downloader/xe4$c;-><init>(Lcom/shabakaty/downloader/xe4;Lcom/shabakaty/downloader/ui2$c;Lcom/shabakaty/downloader/qi2;)V

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xe4$c;->b()V

    return-object p1
.end method

.method public b(Ljava/lang/Class;Lcom/shabakaty/downloader/qi2;)Lcom/shabakaty/downloader/mf4;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/shabakaty/downloader/qi2<",
            "TE;>;)",
            "Lcom/shabakaty/downloader/mf4;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xe4;->d:Lcom/shabakaty/downloader/db1;

    sget-object v1, Lcom/shabakaty/downloader/ui2;->a:Ljava/util/logging/Logger;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/ui2$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v0, v2}, Lcom/shabakaty/downloader/ui2$b;-><init>(Ljava/lang/Class;Lcom/shabakaty/downloader/qi2;Lcom/shabakaty/downloader/db1;Lcom/shabakaty/downloader/ui2$a;)V

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/xe4$c;

    invoke-direct {p1, p0, v1, p2}, Lcom/shabakaty/downloader/xe4$c;-><init>(Lcom/shabakaty/downloader/xe4;Lcom/shabakaty/downloader/ui2$c;Lcom/shabakaty/downloader/qi2;)V

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/xe4$c;->b()V

    return-object p1
.end method

.method public c(Lcom/shabakaty/downloader/qi2;)Lcom/shabakaty/downloader/mf4;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/qi2<",
            "Lcom/shabakaty/downloader/i2<",
            "*>;>;)",
            "Lcom/shabakaty/downloader/mf4;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/xe4$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/shabakaty/downloader/xe4$b;-><init>(Lcom/shabakaty/downloader/xe4;Lcom/shabakaty/downloader/qi2;Lcom/shabakaty/downloader/xe4$a;)V

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xe4$b;->b()V

    return-object v0
.end method

.method public d(Lcom/shabakaty/downloader/ec4;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/xe4;->getState()Lcom/shabakaty/downloader/ec4;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/xe4;->b:Lcom/shabakaty/downloader/l60;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/l60;->a()Lcom/shabakaty/downloader/ec4;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/shabakaty/downloader/ec4;->c(Lcom/shabakaty/downloader/ec4;Lcom/shabakaty/downloader/ec4;)Lcom/shabakaty/downloader/ec4;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/xe4;->a:Lcom/shabakaty/downloader/ec4;

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/xe4;->b:Lcom/shabakaty/downloader/l60;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/l60;->b:Ljava/util/Collection;

    .line 5
    invoke-virtual {p0, v0, p1, v1}, Lcom/shabakaty/downloader/xe4;->f(Lcom/shabakaty/downloader/ec4;Lcom/shabakaty/downloader/ec4;Ljava/util/Collection;)V

    return-void
.end method

.method public declared-synchronized e(Lcom/shabakaty/downloader/i2;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/xe4;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/shabakaty/downloader/xe4$a;

    invoke-direct {v1, p0, p1}, Lcom/shabakaty/downloader/xe4$a;-><init>(Lcom/shabakaty/downloader/xe4;Lcom/shabakaty/downloader/i2;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f(Lcom/shabakaty/downloader/ec4;Lcom/shabakaty/downloader/ec4;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ec4;",
            "Lcom/shabakaty/downloader/ec4;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xe4;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/ui2$c;

    .line 2
    invoke-interface {v1}, Lcom/shabakaty/downloader/ui2$c;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/shabakaty/downloader/ui2$c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x0

    .line 3
    invoke-interface {v1, p1, p2, v2}, Lcom/shabakaty/downloader/ui2$c;->b(Lcom/shabakaty/downloader/ec4;Lcom/shabakaty/downloader/ec4;Z)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getState()Lcom/shabakaty/downloader/ec4;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xe4;->a:Lcom/shabakaty/downloader/ec4;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/ec4;

    new-instance v2, Ljava/util/HashMap;

    iget-object v0, v0, Lcom/shabakaty/downloader/ec4;->r:Ljava/util/Map;

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/ec4;-><init>(Ljava/util/Map;)V

    return-object v1
.end method
