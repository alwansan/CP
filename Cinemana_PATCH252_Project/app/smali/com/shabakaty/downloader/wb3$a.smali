.class public final Lcom/shabakaty/downloader/wb3$a;
.super Lcom/shabakaty/downloader/a85$a;
.source "PeriodicWorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/wb3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/a85$a<",
        "Lcom/shabakaty/downloader/wb3$a;",
        "Lcom/shabakaty/downloader/wb3;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/a85$a;-><init>(Ljava/lang/Class;)V

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/a85$a;->b:Lcom/shabakaty/downloader/d85;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 v0, 0xdbba0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    const-string v2, "Interval duration lesser than minimum allowed value; Changed to %s"

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmp-long v5, p2, v0

    if-gez v5, :cond_0

    .line 4
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object p2

    sget-object p3, Lcom/shabakaty/downloader/d85;->r:Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p4, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Throwable;

    invoke-virtual {p2, p3, v5, v6}, Lcom/shabakaty/downloader/ok2;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-wide p2, v0

    :cond_0
    cmp-long v5, p2, v0

    if-gez v5, :cond_1

    .line 5
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object v5

    sget-object v6, Lcom/shabakaty/downloader/d85;->r:Ljava/lang/String;

    new-array v7, v3, [Ljava/lang/Object;

    aput-object p4, v7, v4

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    new-array v2, v4, [Ljava/lang/Throwable;

    invoke-virtual {v5, v6, p4, v2}, Lcom/shabakaty/downloader/ok2;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    move-wide v0, p2

    :goto_0
    const-wide/32 v5, 0x493e0

    cmp-long p4, p2, v5

    if-gez p4, :cond_2

    .line 6
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object p2

    sget-object p3, Lcom/shabakaty/downloader/d85;->r:Ljava/lang/String;

    new-array p4, v3, [Ljava/lang/Object;

    .line 7
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p4, v4

    const-string v2, "Flex duration lesser than minimum allowed value; Changed to %s"

    .line 8
    invoke-static {v2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    new-array v2, v4, [Ljava/lang/Throwable;

    .line 9
    invoke-virtual {p2, p3, p4, v2}, Lcom/shabakaty/downloader/ok2;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-wide p2, v5

    :cond_2
    cmp-long p4, p2, v0

    if-lez p4, :cond_3

    .line 10
    invoke-static {}, Lcom/shabakaty/downloader/ok2;->c()Lcom/shabakaty/downloader/ok2;

    move-result-object p2

    sget-object p3, Lcom/shabakaty/downloader/d85;->r:Ljava/lang/String;

    new-array p4, v3, [Ljava/lang/Object;

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, p4, v4

    const-string v2, "Flex duration greater than interval duration; Changed to %s"

    .line 12
    invoke-static {v2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    new-array v2, v4, [Ljava/lang/Throwable;

    .line 13
    invoke-virtual {p2, p3, p4, v2}, Lcom/shabakaty/downloader/ok2;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-wide p2, v0

    .line 14
    :cond_3
    iput-wide v0, p1, Lcom/shabakaty/downloader/d85;->h:J

    .line 15
    iput-wide p2, p1, Lcom/shabakaty/downloader/d85;->i:J

    return-void
.end method


# virtual methods
.method public b()Lcom/shabakaty/downloader/a85;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/a85$a;->b:Lcom/shabakaty/downloader/d85;

    iget-boolean v1, v0, Lcom/shabakaty/downloader/d85;->q:Z

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    iget-object v0, v0, Lcom/shabakaty/downloader/d85;->j:Lcom/shabakaty/downloader/gc0;

    .line 2
    iget-boolean v0, v0, Lcom/shabakaty/downloader/gc0;->c:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot run in foreground with an idle mode constraint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    :goto_0
    new-instance v0, Lcom/shabakaty/downloader/wb3;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/wb3;-><init>(Lcom/shabakaty/downloader/wb3$a;)V

    return-object v0
.end method

.method public c()Lcom/shabakaty/downloader/a85$a;
    .locals 0

    return-object p0
.end method
