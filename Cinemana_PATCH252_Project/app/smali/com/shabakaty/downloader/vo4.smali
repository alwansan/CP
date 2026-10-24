.class public Lcom/shabakaty/downloader/vo4;
.super Ljava/lang/Object;
.source "TraceMetricBuilder.java"


# instance fields
.field public final a:Lcom/google/firebase/perf/metrics/Trace;


# direct methods
.method public constructor <init>(Lcom/google/firebase/perf/metrics/Trace;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/vo4;->a:Lcom/google/firebase/perf/metrics/Trace;

    return-void
.end method


# virtual methods
.method public a()Lcom/shabakaty/downloader/uo4;
    .locals 6

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/uo4;->T()Lcom/shabakaty/downloader/uo4$b;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/vo4;->a:Lcom/google/firebase/perf/metrics/Trace;

    .line 2
    iget-object v1, v1, Lcom/google/firebase/perf/metrics/Trace;->u:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/uo4$b;->w(Ljava/lang/String;)Lcom/shabakaty/downloader/uo4$b;

    iget-object v1, p0, Lcom/shabakaty/downloader/vo4;->a:Lcom/google/firebase/perf/metrics/Trace;

    .line 4
    iget-object v1, v1, Lcom/google/firebase/perf/metrics/Trace;->B:Lcom/shabakaty/downloader/pn4;

    .line 5
    iget-wide v1, v1, Lcom/shabakaty/downloader/pn4;->r:J

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/uo4$b;->u(J)Lcom/shabakaty/downloader/uo4$b;

    iget-object v1, p0, Lcom/shabakaty/downloader/vo4;->a:Lcom/google/firebase/perf/metrics/Trace;

    .line 7
    iget-object v2, v1, Lcom/google/firebase/perf/metrics/Trace;->B:Lcom/shabakaty/downloader/pn4;

    .line 8
    iget-object v1, v1, Lcom/google/firebase/perf/metrics/Trace;->C:Lcom/shabakaty/downloader/pn4;

    .line 9
    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/pn4;->b(Lcom/shabakaty/downloader/pn4;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/uo4$b;->v(J)Lcom/shabakaty/downloader/uo4$b;

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/vo4;->a:Lcom/google/firebase/perf/metrics/Trace;

    .line 11
    iget-object v1, v1, Lcom/google/firebase/perf/metrics/Trace;->v:Ljava/util/Map;

    .line 12
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/bf0;

    .line 13
    iget-object v3, v2, Lcom/shabakaty/downloader/bf0;->r:Ljava/lang/String;

    .line 14
    invoke-virtual {v2}, Lcom/shabakaty/downloader/bf0;->a()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lcom/shabakaty/downloader/uo4$b;->t(Ljava/lang/String;J)Lcom/shabakaty/downloader/uo4$b;

    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/vo4;->a:Lcom/google/firebase/perf/metrics/Trace;

    .line 16
    iget-object v1, v1, Lcom/google/firebase/perf/metrics/Trace;->y:Ljava/util/List;

    .line 17
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 18
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/perf/metrics/Trace;

    .line 19
    new-instance v3, Lcom/shabakaty/downloader/vo4;

    invoke-direct {v3, v2}, Lcom/shabakaty/downloader/vo4;-><init>(Lcom/google/firebase/perf/metrics/Trace;)V

    invoke-virtual {v3}, Lcom/shabakaty/downloader/vo4;->a()Lcom/shabakaty/downloader/uo4;

    move-result-object v2

    .line 20
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1$a;->q()V

    .line 21
    iget-object v3, v0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    check-cast v3, Lcom/shabakaty/downloader/uo4;

    invoke-static {v3, v2}, Lcom/shabakaty/downloader/uo4;->D(Lcom/shabakaty/downloader/uo4;Lcom/shabakaty/downloader/uo4;)V

    goto :goto_1

    .line 22
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/vo4;->a:Lcom/google/firebase/perf/metrics/Trace;

    invoke-virtual {v1}, Lcom/google/firebase/perf/metrics/Trace;->getAttributes()Ljava/util/Map;

    move-result-object v1

    .line 23
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1$a;->q()V

    .line 24
    iget-object v2, v0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    check-cast v2, Lcom/shabakaty/downloader/uo4;

    invoke-static {v2}, Lcom/shabakaty/downloader/uo4;->F(Lcom/shabakaty/downloader/uo4;)Ljava/util/Map;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/jm2;

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/jm2;->putAll(Ljava/util/Map;)V

    .line 25
    iget-object v1, p0, Lcom/shabakaty/downloader/vo4;->a:Lcom/google/firebase/perf/metrics/Trace;

    .line 26
    iget-object v2, v1, Lcom/google/firebase/perf/metrics/Trace;->x:Ljava/util/List;

    monitor-enter v2

    .line 27
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iget-object v1, v1, Lcom/google/firebase/perf/metrics/Trace;->x:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/ub3;

    if-eqz v4, :cond_2

    .line 29
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 30
    :cond_3
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    invoke-static {v1}, Lcom/shabakaty/downloader/ub3;->b(Ljava/util/List;)[Lcom/shabakaty/downloader/tb3;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 32
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 33
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1$a;->q()V

    .line 34
    iget-object v2, v0, Lcom/shabakaty/downloader/qp1$a;->s:Lcom/shabakaty/downloader/qp1;

    check-cast v2, Lcom/shabakaty/downloader/uo4;

    invoke-static {v2, v1}, Lcom/shabakaty/downloader/uo4;->H(Lcom/shabakaty/downloader/uo4;Ljava/lang/Iterable;)V

    .line 35
    :cond_4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qp1$a;->n()Lcom/shabakaty/downloader/qp1;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/uo4;

    return-object v0

    :catchall_0
    move-exception v0

    .line 36
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
