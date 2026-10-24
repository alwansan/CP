.class public final Lcom/shabakaty/downloader/ht5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@19.0.1"


# instance fields
.field public final a:Lcom/shabakaty/downloader/wa6;

.field public b:Lcom/shabakaty/downloader/np4;

.field public final c:Lcom/shabakaty/downloader/tk1;

.field public final d:Lcom/shabakaty/downloader/ag6;


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/shabakaty/downloader/wa6;

    .line 1
    invoke-direct {v0}, Lcom/shabakaty/downloader/wa6;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/ht5;->a:Lcom/shabakaty/downloader/wa6;

    iget-object v1, v0, Lcom/shabakaty/downloader/wa6;->b:Lcom/shabakaty/downloader/np4;

    .line 2
    invoke-virtual {v1}, Lcom/shabakaty/downloader/np4;->e()Lcom/shabakaty/downloader/np4;

    move-result-object v1

    iput-object v1, p0, Lcom/shabakaty/downloader/ht5;->b:Lcom/shabakaty/downloader/np4;

    new-instance v1, Lcom/shabakaty/downloader/tk1;

    const/16 v2, 0x8

    .line 3
    invoke-direct {v1, v2}, Lcom/shabakaty/downloader/tk1;-><init>(I)V

    iput-object v1, p0, Lcom/shabakaty/downloader/ht5;->c:Lcom/shabakaty/downloader/tk1;

    new-instance v1, Lcom/shabakaty/downloader/ag6;

    const/16 v2, 0x9

    const/4 v3, 0x0

    .line 4
    invoke-direct {v1, v2, v3}, Lcom/shabakaty/downloader/ag6;-><init>(ILcom/shabakaty/downloader/io2;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/ht5;->d:Lcom/shabakaty/downloader/ag6;

    new-instance v1, Lcom/shabakaty/downloader/nd5;

    const/4 v2, 0x0

    .line 5
    invoke-direct {v1, p0, v2}, Lcom/shabakaty/downloader/nd5;-><init>(Lcom/shabakaty/downloader/ht5;I)V

    iget-object v2, v0, Lcom/shabakaty/downloader/wa6;->d:Lcom/shabakaty/downloader/ft2;

    .line 6
    iget-object v2, v2, Lcom/shabakaty/downloader/ft2;->a:Ljava/util/Map;

    const-string v3, "internal.registerCallback"

    .line 7
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lcom/shabakaty/downloader/nd5;

    const/4 v2, 0x1

    .line 9
    invoke-direct {v1, p0, v2}, Lcom/shabakaty/downloader/nd5;-><init>(Lcom/shabakaty/downloader/ht5;I)V

    iget-object v0, v0, Lcom/shabakaty/downloader/wa6;->d:Lcom/shabakaty/downloader/ft2;

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/ft2;->a:Ljava/util/Map;

    const-string v2, "internal.eventLogger"

    .line 11
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/ri6;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ht5;->a:Lcom/shabakaty/downloader/wa6;

    iget-object v0, v0, Lcom/shabakaty/downloader/wa6;->b:Lcom/shabakaty/downloader/np4;

    .line 1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/np4;->e()Lcom/shabakaty/downloader/np4;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ht5;->b:Lcom/shabakaty/downloader/np4;

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ri6;->u()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/ht5;->a:Lcom/shabakaty/downloader/wa6;

    iget-object v2, p0, Lcom/shabakaty/downloader/ht5;->b:Lcom/shabakaty/downloader/np4;

    const/4 v3, 0x0

    new-array v4, v3, [Lcom/shabakaty/downloader/pj6;

    .line 3
    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shabakaty/downloader/pj6;

    invoke-virtual {v1, v2, v0}, Lcom/shabakaty/downloader/wa6;->a(Lcom/shabakaty/downloader/np4;[Lcom/shabakaty/downloader/pj6;)Lcom/shabakaty/downloader/gj5;

    move-result-object v0

    .line 4
    instance-of v0, v0, Lcom/shabakaty/downloader/ng5;

    if-nez v0, :cond_8

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ri6;->s()Lcom/shabakaty/downloader/ei6;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/ei6;->v()Ljava/util/List;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ji6;

    .line 7
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ji6;->u()Ljava/util/List;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ji6;->t()Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/pj6;

    iget-object v4, p0, Lcom/shabakaty/downloader/ht5;->a:Lcom/shabakaty/downloader/wa6;

    iget-object v5, p0, Lcom/shabakaty/downloader/ht5;->b:Lcom/shabakaty/downloader/np4;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/shabakaty/downloader/pj6;

    aput-object v2, v6, v3

    .line 10
    invoke-virtual {v4, v5, v6}, Lcom/shabakaty/downloader/wa6;->a(Lcom/shabakaty/downloader/np4;[Lcom/shabakaty/downloader/pj6;)Lcom/shabakaty/downloader/gj5;

    move-result-object v2

    .line 11
    instance-of v4, v2, Lcom/shabakaty/downloader/hi5;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/shabakaty/downloader/ht5;->b:Lcom/shabakaty/downloader/np4;

    .line 12
    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/np4;->k(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    .line 13
    :cond_1
    invoke-virtual {v4, v0}, Lcom/shabakaty/downloader/np4;->h(Ljava/lang/String;)Lcom/shabakaty/downloader/gj5;

    move-result-object v4

    .line 14
    instance-of v5, v4, Lcom/shabakaty/downloader/bh5;

    if-nez v5, :cond_3

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid function name: "

    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 16
    :cond_2
    new-instance v0, Ljava/lang/String;

    .line 17
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_3
    check-cast v4, Lcom/shabakaty/downloader/bh5;

    :goto_2
    if-nez v4, :cond_5

    .line 19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Rule function is undefined: "

    .line 20
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 21
    :cond_4
    new-instance v0, Ljava/lang/String;

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iget-object v5, p0, Lcom/shabakaty/downloader/ht5;->b:Lcom/shabakaty/downloader/np4;

    .line 23
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lcom/shabakaty/downloader/bh5;->a(Lcom/shabakaty/downloader/np4;Ljava/util/List;)Lcom/shabakaty/downloader/gj5;

    goto :goto_0

    .line 24
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid rule definition"

    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    return-void

    .line 26
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Program loading failed"

    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 28
    new-instance v0, Lcom/shabakaty/downloader/rz5;

    .line 29
    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/rz5;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b(Lcom/shabakaty/downloader/ke5;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ht5;->c:Lcom/shabakaty/downloader/tk1;

    .line 1
    iput-object p1, v0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ke5;->a()Lcom/shabakaty/downloader/ke5;

    move-result-object p1

    iput-object p1, v0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    iget-object p1, v0, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/ht5;->a:Lcom/shabakaty/downloader/wa6;

    iget-object p1, p1, Lcom/shabakaty/downloader/wa6;->c:Lcom/shabakaty/downloader/np4;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/ug5;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/ug5;-><init>(Ljava/lang/Double;)V

    const-string v1, "runtime.counter"

    invoke-virtual {p1, v1, v0}, Lcom/shabakaty/downloader/np4;->j(Ljava/lang/String;Lcom/shabakaty/downloader/gj5;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/ht5;->d:Lcom/shabakaty/downloader/ag6;

    iget-object v0, p0, Lcom/shabakaty/downloader/ht5;->b:Lcom/shabakaty/downloader/np4;

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/np4;->e()Lcom/shabakaty/downloader/np4;

    move-result-object v0

    iget-object v1, p0, Lcom/shabakaty/downloader/ht5;->c:Lcom/shabakaty/downloader/tk1;

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/ag6;->s(Lcom/shabakaty/downloader/np4;Lcom/shabakaty/downloader/tk1;)V

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ht5;->c()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/ht5;->c:Lcom/shabakaty/downloader/tk1;

    .line 9
    iget-object p1, p1, Lcom/shabakaty/downloader/tk1;->u:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 10
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    return v0

    :catchall_0
    move-exception p1

    .line 11
    new-instance v0, Lcom/shabakaty/downloader/rz5;

    .line 12
    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/rz5;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/ht5;->c:Lcom/shabakaty/downloader/tk1;

    .line 1
    iget-object v1, v0, Lcom/shabakaty/downloader/tk1;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/ke5;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/tk1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ke5;

    .line 3
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/ke5;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
