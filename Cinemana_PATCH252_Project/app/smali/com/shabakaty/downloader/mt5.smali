.class public final Lcom/shabakaty/downloader/mt5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-api@@19.0.1"

# interfaces
.implements Lcom/shabakaty/downloader/zn6;


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/g66;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/g66;)V
    .locals 0

    iput-object p1, p0, Lcom/shabakaty/downloader/mt5;->a:Lcom/shabakaty/downloader/g66;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()J
    .locals 6

    iget-object v0, p0, Lcom/shabakaty/downloader/mt5;->a:Lcom/shabakaty/downloader/g66;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/ts5;

    .line 3
    invoke-direct {v1}, Lcom/shabakaty/downloader/ts5;-><init>()V

    new-instance v2, Lcom/shabakaty/downloader/l06;

    const/4 v3, 0x2

    .line 4
    invoke-direct {v2, v0, v1, v3}, Lcom/shabakaty/downloader/l06;-><init>(Lcom/shabakaty/downloader/g66;Lcom/shabakaty/downloader/ts5;I)V

    .line 5
    iget-object v3, v0, Lcom/shabakaty/downloader/g66;->a:Ljava/util/concurrent/ExecutorService;

    .line 6
    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x1f4

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/ts5;->g2(J)Landroid/os/Bundle;

    move-result-object v1

    const-class v2, Ljava/lang/Long;

    invoke-static {v1, v2}, Lcom/shabakaty/downloader/ts5;->i2(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Random;

    .line 8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    xor-long/2addr v2, v4

    .line 10
    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v1

    iget v3, v0, Lcom/shabakaty/downloader/g66;->d:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/shabakaty/downloader/g66;->d:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public final f()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/mt5;->a:Lcom/shabakaty/downloader/g66;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/ts5;

    .line 3
    invoke-direct {v1}, Lcom/shabakaty/downloader/ts5;-><init>()V

    new-instance v2, Lcom/shabakaty/downloader/l06;

    const/4 v3, 0x1

    .line 4
    invoke-direct {v2, v0, v1, v3}, Lcom/shabakaty/downloader/l06;-><init>(Lcom/shabakaty/downloader/g66;Lcom/shabakaty/downloader/ts5;I)V

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/g66;->a:Ljava/util/concurrent/ExecutorService;

    .line 6
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x32

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/ts5;->h2(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/mt5;->a:Lcom/shabakaty/downloader/g66;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/ts5;

    .line 3
    invoke-direct {v1}, Lcom/shabakaty/downloader/ts5;-><init>()V

    new-instance v2, Lcom/shabakaty/downloader/l06;

    const/4 v3, 0x4

    .line 4
    invoke-direct {v2, v0, v1, v3}, Lcom/shabakaty/downloader/l06;-><init>(Lcom/shabakaty/downloader/g66;Lcom/shabakaty/downloader/ts5;I)V

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/g66;->a:Ljava/util/concurrent/ExecutorService;

    .line 6
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x1f4

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/ts5;->h2(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/mt5;->a:Lcom/shabakaty/downloader/g66;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/ts5;

    .line 3
    invoke-direct {v1}, Lcom/shabakaty/downloader/ts5;-><init>()V

    new-instance v2, Lcom/shabakaty/downloader/l06;

    const/4 v3, 0x0

    .line 4
    invoke-direct {v2, v0, v1, v3}, Lcom/shabakaty/downloader/l06;-><init>(Lcom/shabakaty/downloader/g66;Lcom/shabakaty/downloader/ts5;I)V

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/g66;->a:Ljava/util/concurrent/ExecutorService;

    .line 6
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x1f4

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/ts5;->h2(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/mt5;->a:Lcom/shabakaty/downloader/g66;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/ts5;

    .line 3
    invoke-direct {v1}, Lcom/shabakaty/downloader/ts5;-><init>()V

    new-instance v2, Lcom/shabakaty/downloader/l06;

    const/4 v3, 0x3

    .line 4
    invoke-direct {v2, v0, v1, v3}, Lcom/shabakaty/downloader/l06;-><init>(Lcom/shabakaty/downloader/g66;Lcom/shabakaty/downloader/ts5;I)V

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/g66;->a:Ljava/util/concurrent/ExecutorService;

    .line 6
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x1f4

    .line 7
    invoke-virtual {v1, v2, v3}, Lcom/shabakaty/downloader/ts5;->h2(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final r(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/mt5;->a:Lcom/shabakaty/downloader/g66;

    .line 1
    invoke-virtual {v0, p1, p2}, Lcom/shabakaty/downloader/g66;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/shabakaty/downloader/mt5;->a:Lcom/shabakaty/downloader/g66;

    .line 1
    invoke-virtual {v0, p1, p2, p3}, Lcom/shabakaty/downloader/g66;->f(Ljava/lang/String;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final t(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/mt5;->a:Lcom/shabakaty/downloader/g66;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/xw5;

    .line 3
    invoke-direct {v1, v0, p1}, Lcom/shabakaty/downloader/xw5;-><init>(Lcom/shabakaty/downloader/g66;Landroid/os/Bundle;)V

    .line 4
    iget-object p1, v0, Lcom/shabakaty/downloader/g66;->a:Ljava/util/concurrent/ExecutorService;

    .line 5
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final u(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    iget-object v0, p0, Lcom/shabakaty/downloader/mt5;->a:Lcom/shabakaty/downloader/g66;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/shabakaty/downloader/g66;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ZZLjava/lang/Long;)V

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/mt5;->a:Lcom/shabakaty/downloader/g66;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/bz5;

    const/4 v2, 0x0

    .line 3
    invoke-direct {v1, v0, p1, v2}, Lcom/shabakaty/downloader/bz5;-><init>(Lcom/shabakaty/downloader/g66;Ljava/lang/String;I)V

    .line 4
    iget-object p1, v0, Lcom/shabakaty/downloader/g66;->a:Ljava/util/concurrent/ExecutorService;

    .line 5
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final w(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/shabakaty/downloader/mt5;->a:Lcom/shabakaty/downloader/g66;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/ex5;

    .line 3
    invoke-direct {v1, v0, p1, p2, p3}, Lcom/shabakaty/downloader/ex5;-><init>(Lcom/shabakaty/downloader/g66;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4
    iget-object p1, v0, Lcom/shabakaty/downloader/g66;->a:Ljava/util/concurrent/ExecutorService;

    .line 5
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final x(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/shabakaty/downloader/mt5;->a:Lcom/shabakaty/downloader/g66;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/bz5;

    const/4 v2, 0x1

    .line 3
    invoke-direct {v1, v0, p1, v2}, Lcom/shabakaty/downloader/bz5;-><init>(Lcom/shabakaty/downloader/g66;Ljava/lang/String;I)V

    .line 4
    iget-object p1, v0, Lcom/shabakaty/downloader/g66;->a:Ljava/util/concurrent/ExecutorService;

    .line 5
    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final y(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/mt5;->a:Lcom/shabakaty/downloader/g66;

    .line 1
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/g66;->c(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
