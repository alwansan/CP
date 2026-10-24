.class public Lcom/shabakaty/downloader/p85;
.super Ljava/lang/Object;
.source "WorkerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/p85$a;
    }
.end annotation


# static fields
.field public static final K:Ljava/lang/String;


# instance fields
.field public A:Lcom/shabakaty/downloader/sh1;

.field public B:Landroidx/work/impl/WorkDatabase;

.field public C:Lcom/shabakaty/downloader/e85;

.field public D:Lcom/shabakaty/downloader/iq0;

.field public E:Lcom/shabakaty/downloader/h85;

.field public F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public G:Ljava/lang/String;

.field public H:Lcom/shabakaty/downloader/g24;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/g24<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public I:Lcom/shabakaty/downloader/pi2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/pi2<",
            "Landroidx/work/ListenableWorker$a;",
            ">;"
        }
    .end annotation
.end field

.field public volatile J:Z

.field public r:Landroid/content/Context;

.field public s:Ljava/lang/String;

.field public t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/xx3;",
            ">;"
        }
    .end annotation
.end field

.field public u:Landroidx/work/WorkerParameters$a;

.field public v:Lcom/shabakaty/downloader/d85;

.field public w:Landroidx/work/ListenableWorker;

.field public x:Landroidx/work/ListenableWorker$a;

.field public y:Lcom/shabakaty/downloader/y90;

.field public z:Lcom/shabakaty/downloader/bl4;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkerWrapper"

    .line 1
    invoke-static {v0}, Lcom/shabakaty/downloader/ok2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/p85;->K:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/p85$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/shabakaty/downloader/p85;->x:Landroidx/work/ListenableWorker$a;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/g24;

    invoke-direct {v0}, Lcom/shabakaty/downloader/g24;-><init>()V

    .line 5
    iput-object v0, p0, Lcom/shabakaty/downloader/p85;->H:Lcom/shabakaty/downloader/g24;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/p85;->I:Lcom/shabakaty/downloader/pi2;

    .line 7
    iget-object v1, p1, Lcom/shabakaty/downloader/p85$a;->a:Landroid/content/Context;

    iput-object v1, p0, Lcom/shabakaty/downloader/p85;->r:Landroid/content/Context;

    .line 8
    iget-object v1, p1, Lcom/shabakaty/downloader/p85$a;->c:Lcom/shabakaty/downloader/bl4;

    iput-object v1, p0, Lcom/shabakaty/downloader/p85;->z:Lcom/shabakaty/downloader/bl4;

    .line 9
    iget-object v1, p1, Lcom/shabakaty/downloader/p85$a;->b:Lcom/shabakaty/downloader/sh1;

    iput-object v1, p0, Lcom/shabakaty/downloader/p85;->A:Lcom/shabakaty/downloader/sh1;

    .line 10
    iget-object v1, p1, Lcom/shabakaty/downloader/p85$a;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    .line 11
    iget-object v1, p1, Lcom/shabakaty/downloader/p85$a;->g:Ljava/util/List;

    iput-object v1, p0, Lcom/shabakaty/downloader/p85;->t:Ljava/util/List;

    .line 12
    iget-object v1, p1, Lcom/shabakaty/downloader/p85$a;->h:Landroidx/work/WorkerParameters$a;

    iput-object v1, p0, Lcom/shabakaty/downloader/p85;->u:Landroidx/work/WorkerParameters$a;

    .line 13
    iput-object v0, p0, Lcom/shabakaty/downloader/p85;->w:Landroidx/work/ListenableWorker;

    .line 14
    iget-object v0, p1, Lcom/shabakaty/downloader/p85$a;->d:Lcom/shabakaty/downloader/y90;

    iput-object v0, p0, Lcom/shabakaty/downloader/p85;->y:Lcom/shabakaty/downloader/y90;

    .line 15
    iget-object p1, p1, Lcom/shabakaty/downloader/p85$a;->e:Landroidx/work/impl/WorkDatabase;

    iput-object p1, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    .line 16
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->u()Lcom/shabakaty/downloader/e85;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/p85;->C:Lcom/shabakaty/downloader/e85;

    .line 17
    iget-object p1, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->p()Lcom/shabakaty/downloader/iq0;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/p85;->D:Lcom/shabakaty/downloader/iq0;

    .line 18
    iget-object p1, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->v()Lcom/shabakaty/downloader/h85;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/p85;->E:Lcom/shabakaty/downloader/h85;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/work/ListenableWorker$a;)V
    .locals 9

    .line 1
    instance-of v0, p1, Landroidx/work/ListenableWorker$a$c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object p1

    sget-object v0, Lcom/shabakaty/downloader/p85;->K:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/shabakaty/downloader/p85;->G:Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v4, "Worker result SUCCESS for %s"

    .line 3
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Throwable;

    .line 4
    invoke-virtual {p1, v0, v3, v4}, Lcom/shabakaty/downloader/ok2;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/p85;->v:Lcom/shabakaty/downloader/d85;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/d85;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/p85;->e()V

    goto/16 :goto_1

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    .line 8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 10
    :try_start_0
    iget-object p1, p0, Lcom/shabakaty/downloader/p85;->C:Lcom/shabakaty/downloader/e85;

    sget-object v0, Landroidx/work/d;->t:Landroidx/work/d;

    new-array v3, v1, [Ljava/lang/String;

    iget-object v4, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    aput-object v4, v3, v2

    check-cast p1, Lcom/shabakaty/downloader/f85;

    invoke-virtual {p1, v0, v3}, Lcom/shabakaty/downloader/f85;->p(Landroidx/work/d;[Ljava/lang/String;)I

    .line 11
    iget-object p1, p0, Lcom/shabakaty/downloader/p85;->x:Landroidx/work/ListenableWorker$a;

    check-cast p1, Landroidx/work/ListenableWorker$a$c;

    .line 12
    iget-object p1, p1, Landroidx/work/ListenableWorker$a$c;->a:Landroidx/work/b;

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->C:Lcom/shabakaty/downloader/e85;

    iget-object v3, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    check-cast v0, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v0, v3, p1}, Lcom/shabakaty/downloader/f85;->n(Ljava/lang/String;Landroidx/work/b;)V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 15
    iget-object p1, p0, Lcom/shabakaty/downloader/p85;->D:Lcom/shabakaty/downloader/iq0;

    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    check-cast p1, Lcom/shabakaty/downloader/jq0;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/jq0;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 16
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 17
    iget-object v5, p0, Lcom/shabakaty/downloader/p85;->C:Lcom/shabakaty/downloader/e85;

    check-cast v5, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v5, v0}, Lcom/shabakaty/downloader/f85;->g(Ljava/lang/String;)Landroidx/work/d;

    move-result-object v5

    sget-object v6, Landroidx/work/d;->v:Landroidx/work/d;

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/shabakaty/downloader/p85;->D:Lcom/shabakaty/downloader/iq0;

    .line 18
    check-cast v5, Lcom/shabakaty/downloader/jq0;

    invoke-virtual {v5, v0}, Lcom/shabakaty/downloader/jq0;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 19
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v5

    sget-object v6, Lcom/shabakaty/downloader/p85;->K:Ljava/lang/String;

    const-string v7, "Setting status to enqueued for %s"

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v0, v8, v2

    .line 20
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Throwable;

    .line 21
    invoke-virtual {v5, v6, v7, v8}, Lcom/shabakaty/downloader/ok2;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 22
    iget-object v5, p0, Lcom/shabakaty/downloader/p85;->C:Lcom/shabakaty/downloader/e85;

    sget-object v6, Landroidx/work/d;->r:Landroidx/work/d;

    new-array v7, v1, [Ljava/lang/String;

    aput-object v0, v7, v2

    check-cast v5, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v5, v6, v7}, Lcom/shabakaty/downloader/f85;->p(Landroidx/work/d;[Ljava/lang/String;)I

    .line 23
    iget-object v5, p0, Lcom/shabakaty/downloader/p85;->C:Lcom/shabakaty/downloader/e85;

    check-cast v5, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v5, v0, v3, v4}, Lcom/shabakaty/downloader/f85;->o(Ljava/lang/String;J)V

    goto :goto_0

    .line 24
    :cond_2
    iget-object p1, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    iget-object p1, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    .line 26
    invoke-virtual {p1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 27
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/p85;->f(Z)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 28
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    .line 29
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 30
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/p85;->f(Z)V

    .line 31
    throw p1

    .line 32
    :cond_3
    instance-of p1, p1, Landroidx/work/ListenableWorker$a$b;

    if-eqz p1, :cond_4

    .line 33
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object p1

    sget-object v0, Lcom/shabakaty/downloader/p85;->K:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/shabakaty/downloader/p85;->G:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "Worker result RETRY for %s"

    .line 34
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 35
    invoke-virtual {p1, v0, v1, v2}, Lcom/shabakaty/downloader/ok2;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 36
    invoke-virtual {p0}, Lcom/shabakaty/downloader/p85;->d()V

    goto :goto_1

    .line 37
    :cond_4
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object p1

    sget-object v0, Lcom/shabakaty/downloader/p85;->K:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/shabakaty/downloader/p85;->G:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v3, "Worker result FAILURE for %s"

    .line 38
    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 39
    invoke-virtual {p1, v0, v1, v2}, Lcom/shabakaty/downloader/ok2;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 40
    iget-object p1, p0, Lcom/shabakaty/downloader/p85;->v:Lcom/shabakaty/downloader/d85;

    invoke-virtual {p1}, Lcom/shabakaty/downloader/d85;->c()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 41
    invoke-virtual {p0}, Lcom/shabakaty/downloader/p85;->e()V

    goto :goto_1

    .line 42
    :cond_5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/p85;->h()V

    :goto_1
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->C:Lcom/shabakaty/downloader/e85;

    check-cast v1, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/f85;->g(Ljava/lang/String;)Landroidx/work/d;

    move-result-object v1

    sget-object v2, Landroidx/work/d;->w:Landroidx/work/d;

    if-eq v1, v2, :cond_0

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->C:Lcom/shabakaty/downloader/e85;

    sget-object v2, Landroidx/work/d;->u:Landroidx/work/d;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    check-cast v1, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/f85;->p(Landroidx/work/d;[Ljava/lang/String;)I

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->D:Lcom/shabakaty/downloader/iq0;

    check-cast v1, Lcom/shabakaty/downloader/jq0;

    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/jq0;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/p85;->i()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->C:Lcom/shabakaty/downloader/e85;

    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    check-cast v0, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/f85;->g(Ljava/lang/String;)Landroidx/work/d;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->t()Lcom/shabakaty/downloader/w75;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    check-cast v1, Lcom/shabakaty/downloader/x75;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/x75;->a(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/p85;->f(Z)V

    goto :goto_0

    .line 8
    :cond_0
    sget-object v1, Landroidx/work/d;->s:Landroidx/work/d;

    if-ne v0, v1, :cond_1

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->x:Landroidx/work/ListenableWorker$a;

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/p85;->a(Landroidx/work/ListenableWorker$a;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0}, Landroidx/work/d;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/p85;->d()V

    .line 12
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    .line 14
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->j()V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 15
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    .line 16
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 17
    throw v0

    .line 18
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->t:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/xx3;

    .line 20
    iget-object v2, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/xx3;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->y:Lcom/shabakaty/downloader/y90;

    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    iget-object v2, p0, Lcom/shabakaty/downloader/p85;->t:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/shabakaty/downloader/by3;->a(Lcom/shabakaty/downloader/y90;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method public final d()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->i()V

    const/4 v0, 0x1

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->C:Lcom/shabakaty/downloader/e85;

    sget-object v2, Landroidx/work/d;->r:Landroidx/work/d;

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    aput-object v5, v3, v4

    check-cast v1, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/f85;->p(Landroidx/work/d;[Ljava/lang/String;)I

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->C:Lcom/shabakaty/downloader/e85;

    iget-object v2, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    check-cast v1, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v1, v2, v3, v4}, Lcom/shabakaty/downloader/f85;->o(Ljava/lang/String;J)V

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->C:Lcom/shabakaty/downloader/e85;

    iget-object v2, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    const-wide/16 v3, -0x1

    check-cast v1, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v1, v2, v3, v4}, Lcom/shabakaty/downloader/f85;->l(Ljava/lang/String;J)I

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    .line 9
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 10
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/p85;->f(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 11
    iget-object v2, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    .line 12
    invoke-virtual {v2}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 13
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/p85;->f(Z)V

    .line 14
    throw v1
.end method

.method public final e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->i()V

    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->C:Lcom/shabakaty/downloader/e85;

    iget-object v2, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    check-cast v1, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v1, v2, v3, v4}, Lcom/shabakaty/downloader/f85;->o(Ljava/lang/String;J)V

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->C:Lcom/shabakaty/downloader/e85;

    sget-object v2, Landroidx/work/d;->r:Landroidx/work/d;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    aput-object v4, v3, v0

    check-cast v1, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/f85;->p(Landroidx/work/d;[Ljava/lang/String;)I

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->C:Lcom/shabakaty/downloader/e85;

    iget-object v2, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    check-cast v1, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/f85;->m(Ljava/lang/String;)I

    .line 7
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->C:Lcom/shabakaty/downloader/e85;

    iget-object v2, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    const-wide/16 v3, -0x1

    check-cast v1, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v1, v2, v3, v4}, Lcom/shabakaty/downloader/f85;->l(Ljava/lang/String;J)I

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    .line 10
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 11
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/p85;->f(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 12
    iget-object v2, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    .line 13
    invoke-virtual {v2}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 14
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/p85;->f(Z)V

    .line 15
    throw v1
.end method

.method public final f(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->u()Lcom/shabakaty/downloader/e85;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/f85;->c()Ljava/util/List;

    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->r:Landroid/content/Context;

    const-class v3, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    invoke-static {v0, v3, v2}, Lcom/shabakaty/downloader/p93;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    :cond_1
    if-eqz p1, :cond_2

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->C:Lcom/shabakaty/downloader/e85;

    sget-object v3, Landroidx/work/d;->r:Landroidx/work/d;

    new-array v1, v1, [Ljava/lang/String;

    iget-object v4, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    aput-object v4, v1, v2

    check-cast v0, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v0, v3, v1}, Lcom/shabakaty/downloader/f85;->p(Landroidx/work/d;[Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->C:Lcom/shabakaty/downloader/e85;

    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    const-wide/16 v2, -0x1

    check-cast v0, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/f85;->l(Ljava/lang/String;J)I

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->v:Lcom/shabakaty/downloader/d85;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->w:Landroidx/work/ListenableWorker;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->A:Lcom/shabakaty/downloader/sh1;

    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    check-cast v0, Lcom/shabakaty/downloader/fg3;

    .line 11
    iget-object v2, v0, Lcom/shabakaty/downloader/fg3;->A:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :try_start_1
    iget-object v3, v0, Lcom/shabakaty/downloader/fg3;->v:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v0}, Lcom/shabakaty/downloader/fg3;->g()V

    .line 14
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 15
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 16
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    .line 17
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 18
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->H:Lcom/shabakaty/downloader/g24;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/g24;->j(Ljava/lang/Object;)Z

    return-void

    :catchall_1
    move-exception p1

    .line 19
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    .line 20
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 21
    throw p1
.end method

.method public final g()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->C:Lcom/shabakaty/downloader/e85;

    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    check-cast v0, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/f85;->g(Ljava/lang/String;)Landroidx/work/d;

    move-result-object v0

    .line 2
    sget-object v1, Landroidx/work/d;->s:Landroidx/work/d;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/p85;->K:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v5, "Status for %s is RUNNING;not doing any work and rescheduling for later execution"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v4, v3}, Lcom/shabakaty/downloader/ok2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/p85;->f(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v1

    sget-object v4, Lcom/shabakaty/downloader/p85;->K:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    aput-object v6, v5, v3

    aput-object v0, v5, v2

    const-string v0, "Status for %s is %s; not doing any work"

    .line 6
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Throwable;

    .line 7
    invoke-virtual {v1, v4, v0, v2}, Lcom/shabakaty/downloader/ok2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 8
    invoke-virtual {p0, v3}, Lcom/shabakaty/downloader/p85;->f(Z)V

    :goto_0
    return-void
.end method

.method public h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 3
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->i()V

    const/4 v0, 0x0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/p85;->b(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->x:Landroidx/work/ListenableWorker$a;

    check-cast v1, Landroidx/work/ListenableWorker$a$a;

    .line 6
    iget-object v1, v1, Landroidx/work/ListenableWorker$a$a;->a:Landroidx/work/b;

    .line 7
    iget-object v2, p0, Lcom/shabakaty/downloader/p85;->C:Lcom/shabakaty/downloader/e85;

    iget-object v3, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    check-cast v2, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v2, v3, v1}, Lcom/shabakaty/downloader/f85;->n(Ljava/lang/String;Landroidx/work/b;)V

    .line 8
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    .line 10
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 11
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/p85;->f(Z)V

    return-void

    :catchall_0
    move-exception v1

    .line 12
    iget-object v2, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    .line 13
    invoke-virtual {v2}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 14
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/p85;->f(Z)V

    .line 15
    throw v1
.end method

.method public final i()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/p85;->J:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v0

    sget-object v2, Lcom/shabakaty/downloader/p85;->K:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/shabakaty/downloader/p85;->G:Ljava/lang/String;

    aput-object v5, v4, v1

    const-string v5, "Work interrupted for %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v4, v5}, Lcom/shabakaty/downloader/ok2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->C:Lcom/shabakaty/downloader/e85;

    iget-object v2, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    check-cast v0, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/f85;->g(Ljava/lang/String;)Landroidx/work/d;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/p85;->f(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroidx/work/d;->f()Z

    move-result v0

    xor-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/p85;->f(Z)V

    :goto_0
    return v3

    :cond_1
    return v1
.end method

.method public run()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->E:Lcom/shabakaty/downloader/h85;

    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    check-cast v0, Lcom/shabakaty/downloader/i85;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/i85;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/p85;->F:Ljava/util/List;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Work [ id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tags={ "

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    const-string v5, ", "

    .line 6
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v0, " } ]"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/shabakaty/downloader/p85;->G:Ljava/lang/String;

    .line 11
    sget-object v0, Landroidx/work/d;->r:Landroidx/work/d;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/p85;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_b

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    .line 13
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 14
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->C:Lcom/shabakaty/downloader/e85;

    iget-object v3, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    check-cast v1, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v1, v3}, Lcom/shabakaty/downloader/f85;->i(Ljava/lang/String;)Lcom/shabakaty/downloader/d85;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/p85;->v:Lcom/shabakaty/downloader/d85;

    if-nez v1, :cond_3

    .line 16
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/p85;->K:Ljava/lang/String;

    const-string v3, "Didn\'t find WorkSpec for id %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    aput-object v4, v2, v5

    .line 17
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 18
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/ok2;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 19
    invoke-virtual {p0, v5}, Lcom/shabakaty/downloader/p85;->f(Z)V

    .line 20
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->n()V

    goto/16 :goto_4

    .line 21
    :cond_3
    iget-object v3, v1, Lcom/shabakaty/downloader/d85;->b:Landroidx/work/d;

    if-eq v3, v0, :cond_4

    .line 22
    invoke-virtual {p0}, Lcom/shabakaty/downloader/p85;->g()V

    .line 23
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->n()V

    .line 24
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/p85;->K:Ljava/lang/String;

    const-string v3, "%s is not in ENQUEUED state. Nothing more to do."

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/shabakaty/downloader/p85;->v:Lcom/shabakaty/downloader/d85;

    iget-object v4, v4, Lcom/shabakaty/downloader/d85;->c:Ljava/lang/String;

    aput-object v4, v2, v5

    .line 25
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 26
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/ok2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_4

    .line 27
    :cond_4
    invoke-virtual {v1}, Lcom/shabakaty/downloader/d85;->c()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->v:Lcom/shabakaty/downloader/d85;

    .line 28
    iget-object v3, v1, Lcom/shabakaty/downloader/d85;->b:Landroidx/work/d;

    if-ne v3, v0, :cond_5

    iget v1, v1, Lcom/shabakaty/downloader/d85;->k:I

    if-lez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_8

    .line 29
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 30
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->v:Lcom/shabakaty/downloader/d85;

    iget-wide v6, v1, Lcom/shabakaty/downloader/d85;->n:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-nez v10, :cond_7

    const/4 v6, 0x1

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    :goto_3
    if-nez v6, :cond_8

    .line 31
    invoke-virtual {v1}, Lcom/shabakaty/downloader/d85;->a()J

    move-result-wide v6

    cmp-long v1, v3, v6

    if-gez v1, :cond_8

    .line 32
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/p85;->K:Ljava/lang/String;

    const-string v3, "Delaying execution for %s because it is being executed before schedule."

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/shabakaty/downloader/p85;->v:Lcom/shabakaty/downloader/d85;

    iget-object v6, v6, Lcom/shabakaty/downloader/d85;->c:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 33
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Throwable;

    .line 34
    invoke-virtual {v0, v1, v3, v4}, Lcom/shabakaty/downloader/ok2;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 35
    invoke-virtual {p0, v2}, Lcom/shabakaty/downloader/p85;->f(Z)V

    .line 36
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 37
    :goto_4
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    .line 38
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->j()V

    goto/16 :goto_b

    .line 39
    :cond_8
    :try_start_1
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 40
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    .line 41
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 42
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->v:Lcom/shabakaty/downloader/d85;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/d85;->c()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 43
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->v:Lcom/shabakaty/downloader/d85;

    iget-object v1, v1, Lcom/shabakaty/downloader/d85;->e:Landroidx/work/b;

    :goto_5
    move-object v4, v1

    goto/16 :goto_9

    .line 44
    :cond_9
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->y:Lcom/shabakaty/downloader/y90;

    .line 45
    iget-object v1, v1, Lcom/shabakaty/downloader/y90;->d:Lcom/shabakaty/downloader/n12;

    .line 46
    iget-object v3, p0, Lcom/shabakaty/downloader/p85;->v:Lcom/shabakaty/downloader/d85;

    iget-object v3, v3, Lcom/shabakaty/downloader/d85;->d:Ljava/lang/String;

    .line 47
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v1, Lcom/shabakaty/downloader/l12;->a:Ljava/lang/String;

    const/4 v1, 0x0

    .line 49
    :try_start_2
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 50
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/l12;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v4

    .line 51
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v6

    sget-object v7, Lcom/shabakaty/downloader/l12;->a:Ljava/lang/String;

    const-string v8, "Trouble instantiating + "

    invoke-static {v8, v3}, Lcom/shabakaty/downloader/el3;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v8, v2, [Ljava/lang/Throwable;

    aput-object v4, v8, v5

    invoke-virtual {v6, v7, v3, v8}, Lcom/shabakaty/downloader/ok2;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-object v4, v1

    :goto_6
    if-nez v4, :cond_a

    .line 52
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/p85;->K:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/shabakaty/downloader/p85;->v:Lcom/shabakaty/downloader/d85;

    iget-object v3, v3, Lcom/shabakaty/downloader/d85;->d:Ljava/lang/String;

    aput-object v3, v2, v5

    const-string v3, "Could not create Input Merger %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/ok2;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 53
    invoke-virtual {p0}, Lcom/shabakaty/downloader/p85;->h()V

    goto/16 :goto_b

    .line 54
    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 55
    iget-object v6, p0, Lcom/shabakaty/downloader/p85;->v:Lcom/shabakaty/downloader/d85;

    iget-object v6, v6, Lcom/shabakaty/downloader/d85;->e:Landroidx/work/b;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    iget-object v6, p0, Lcom/shabakaty/downloader/p85;->C:Lcom/shabakaty/downloader/e85;

    iget-object v7, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    check-cast v6, Lcom/shabakaty/downloader/f85;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    .line 57
    invoke-static {v8, v2}, Lcom/shabakaty/downloader/yt3;->a(Ljava/lang/String;I)Lcom/shabakaty/downloader/yt3;

    move-result-object v8

    if-nez v7, :cond_b

    .line 58
    invoke-virtual {v8, v2}, Lcom/shabakaty/downloader/yt3;->T0(I)V

    goto :goto_7

    .line 59
    :cond_b
    invoke-virtual {v8, v2, v7}, Lcom/shabakaty/downloader/yt3;->I(ILjava/lang/String;)V

    .line 60
    :goto_7
    iget-object v2, v6, Lcom/shabakaty/downloader/f85;->a:Lcom/shabakaty/downloader/vt3;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/vt3;->b()V

    .line 61
    iget-object v2, v6, Lcom/shabakaty/downloader/f85;->a:Lcom/shabakaty/downloader/vt3;

    invoke-static {v2, v8, v5, v1}, Lcom/shabakaty/downloader/lh0;->b(Lcom/shabakaty/downloader/vt3;Lcom/shabakaty/downloader/bi4;ZLandroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    .line 62
    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 63
    :goto_8
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 64
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 65
    invoke-static {v6}, Landroidx/work/b;->a([B)Landroidx/work/b;

    move-result-object v6

    .line 66
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_8

    .line 67
    :cond_c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 68
    invoke-virtual {v8}, Lcom/shabakaty/downloader/yt3;->c()V

    .line 69
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 70
    invoke-virtual {v4, v3}, Lcom/shabakaty/downloader/l12;->a(Ljava/util/List;)Landroidx/work/b;

    move-result-object v1

    goto/16 :goto_5

    .line 71
    :goto_9
    new-instance v1, Landroidx/work/WorkerParameters;

    iget-object v2, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    .line 72
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    iget-object v5, p0, Lcom/shabakaty/downloader/p85;->F:Ljava/util/List;

    iget-object v6, p0, Lcom/shabakaty/downloader/p85;->u:Landroidx/work/WorkerParameters$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/p85;->v:Lcom/shabakaty/downloader/d85;

    iget v7, v2, Lcom/shabakaty/downloader/d85;->k:I

    iget-object v2, p0, Lcom/shabakaty/downloader/p85;->y:Lcom/shabakaty/downloader/y90;

    .line 73
    iget-object v8, v2, Lcom/shabakaty/downloader/y90;->a:Ljava/util/concurrent/Executor;

    .line 74
    iget-object v9, p0, Lcom/shabakaty/downloader/p85;->z:Lcom/shabakaty/downloader/bl4;

    .line 75
    iget-object v10, v2, Lcom/shabakaty/downloader/y90;->c:Lcom/shabakaty/downloader/m85;

    .line 76
    new-instance v11, Lcom/shabakaty/downloader/y75;

    iget-object v2, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    iget-object v12, p0, Lcom/shabakaty/downloader/p85;->z:Lcom/shabakaty/downloader/bl4;

    invoke-direct {v11, v2, v12}, Lcom/shabakaty/downloader/y75;-><init>(Landroidx/work/impl/WorkDatabase;Lcom/shabakaty/downloader/bl4;)V

    new-instance v13, Lcom/shabakaty/downloader/tk1;

    iget-object v14, p0, Lcom/shabakaty/downloader/p85;->A:Lcom/shabakaty/downloader/sh1;

    invoke-direct {v13, v2, v14, v12}, Lcom/shabakaty/downloader/tk1;-><init>(Landroidx/work/impl/WorkDatabase;Lcom/shabakaty/downloader/sh1;Lcom/shabakaty/downloader/bl4;)V

    move-object v2, v1

    move-object v12, v13

    invoke-direct/range {v2 .. v12}, Landroidx/work/WorkerParameters;-><init>(Ljava/util/UUID;Landroidx/work/b;Ljava/util/Collection;Landroidx/work/WorkerParameters$a;ILjava/util/concurrent/Executor;Lcom/shabakaty/downloader/bl4;Lcom/shabakaty/downloader/m85;Lcom/shabakaty/downloader/mh3;Lcom/shabakaty/downloader/tk1;)V

    .line 77
    iget-object v2, p0, Lcom/shabakaty/downloader/p85;->w:Landroidx/work/ListenableWorker;

    if-nez v2, :cond_d

    .line 78
    iget-object v2, p0, Lcom/shabakaty/downloader/p85;->y:Lcom/shabakaty/downloader/y90;

    .line 79
    iget-object v2, v2, Lcom/shabakaty/downloader/y90;->c:Lcom/shabakaty/downloader/m85;

    .line 80
    iget-object v3, p0, Lcom/shabakaty/downloader/p85;->r:Landroid/content/Context;

    iget-object v4, p0, Lcom/shabakaty/downloader/p85;->v:Lcom/shabakaty/downloader/d85;

    iget-object v4, v4, Lcom/shabakaty/downloader/d85;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lcom/shabakaty/downloader/m85;->a(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/p85;->w:Landroidx/work/ListenableWorker;

    .line 81
    :cond_d
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->w:Landroidx/work/ListenableWorker;

    if-nez v1, :cond_e

    .line 82
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/p85;->K:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/shabakaty/downloader/p85;->v:Lcom/shabakaty/downloader/d85;

    iget-object v3, v3, Lcom/shabakaty/downloader/d85;->c:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Could not create Worker %s"

    .line 83
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Throwable;

    .line 84
    invoke-virtual {v0, v1, v2, v3}, Lcom/shabakaty/downloader/ok2;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 85
    invoke-virtual {p0}, Lcom/shabakaty/downloader/p85;->h()V

    goto/16 :goto_b

    :cond_e
    const/4 v2, 0x0

    .line 86
    iget-boolean v3, v1, Landroidx/work/ListenableWorker;->u:Z

    if-eqz v3, :cond_f

    .line 87
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v0

    sget-object v1, Lcom/shabakaty/downloader/p85;->K:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/shabakaty/downloader/p85;->v:Lcom/shabakaty/downloader/d85;

    iget-object v4, v4, Lcom/shabakaty/downloader/d85;->c:Ljava/lang/String;

    aput-object v4, v3, v2

    const-string v4, "Received an already-used Worker %s; WorkerFactory should return new instances"

    .line 88
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 89
    invoke-virtual {v0, v1, v3, v2}, Lcom/shabakaty/downloader/ok2;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 90
    invoke-virtual {p0}, Lcom/shabakaty/downloader/p85;->h()V

    goto :goto_b

    :cond_f
    const/4 v2, 0x1

    .line 91
    iput-boolean v2, v1, Landroidx/work/ListenableWorker;->u:Z

    .line 92
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    .line 93
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->a()V

    .line 94
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->i()V

    .line 95
    :try_start_4
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->C:Lcom/shabakaty/downloader/e85;

    iget-object v2, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    check-cast v1, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/f85;->g(Ljava/lang/String;)Landroidx/work/d;

    move-result-object v1

    if-ne v1, v0, :cond_10

    .line 96
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->C:Lcom/shabakaty/downloader/e85;

    sget-object v1, Landroidx/work/d;->s:Landroidx/work/d;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    iget-object v4, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    check-cast v0, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v0, v1, v3}, Lcom/shabakaty/downloader/f85;->p(Landroidx/work/d;[Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->C:Lcom/shabakaty/downloader/e85;

    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->s:Ljava/lang/String;

    check-cast v0, Lcom/shabakaty/downloader/f85;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/f85;->k(Ljava/lang/String;)I

    goto :goto_a

    :cond_10
    const/4 v2, 0x0

    .line 98
    :goto_a
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->n()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 99
    iget-object v0, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    .line 100
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vt3;->j()V

    if-eqz v2, :cond_12

    .line 101
    invoke-virtual {p0}, Lcom/shabakaty/downloader/p85;->i()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_b

    .line 102
    :cond_11
    new-instance v0, Lcom/shabakaty/downloader/g24;

    invoke-direct {v0}, Lcom/shabakaty/downloader/g24;-><init>()V

    .line 103
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->z:Lcom/shabakaty/downloader/bl4;

    check-cast v1, Lcom/shabakaty/downloader/s75;

    .line 104
    iget-object v1, v1, Lcom/shabakaty/downloader/s75;->c:Ljava/util/concurrent/Executor;

    .line 105
    new-instance v2, Lcom/shabakaty/downloader/n85;

    invoke-direct {v2, p0, v0}, Lcom/shabakaty/downloader/n85;-><init>(Lcom/shabakaty/downloader/p85;Lcom/shabakaty/downloader/g24;)V

    .line 106
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 107
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->G:Ljava/lang/String;

    .line 108
    new-instance v2, Lcom/shabakaty/downloader/o85;

    invoke-direct {v2, p0, v0, v1}, Lcom/shabakaty/downloader/o85;-><init>(Lcom/shabakaty/downloader/p85;Lcom/shabakaty/downloader/g24;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->z:Lcom/shabakaty/downloader/bl4;

    .line 109
    check-cast v1, Lcom/shabakaty/downloader/s75;

    .line 110
    iget-object v1, v1, Lcom/shabakaty/downloader/s75;->a:Lcom/shabakaty/downloader/x04;

    .line 111
    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/b0;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_b

    .line 112
    :cond_12
    invoke-virtual {p0}, Lcom/shabakaty/downloader/p85;->g()V

    :goto_b
    return-void

    :catchall_0
    move-exception v0

    .line 113
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    .line 114
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 115
    throw v0

    :catchall_1
    move-exception v0

    .line 116
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 117
    invoke-virtual {v8}, Lcom/shabakaty/downloader/yt3;->c()V

    .line 118
    throw v0

    :catchall_2
    move-exception v0

    .line 119
    iget-object v1, p0, Lcom/shabakaty/downloader/p85;->B:Landroidx/work/impl/WorkDatabase;

    .line 120
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vt3;->j()V

    .line 121
    throw v0
.end method
