.class public Lcom/shabakaty/downloader/n56;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cloud-messaging@@16.0.0"


# static fields
.field public static e:Lcom/shabakaty/downloader/n56;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ra6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/ra6;-><init>(Lcom/shabakaty/downloader/n56;Lcom/shabakaty/downloader/jl3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/n56;->c:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/shabakaty/downloader/n56;->d:I

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/n56;->b:Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/n56;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/cr4;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/shabakaty/downloader/n56;->d:I

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/n56;->a:Ljava/lang/Object;

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/cr4;->b()Lcom/shabakaty/downloader/ma3;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/n56;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/te1;ILcom/shabakaty/downloader/co;Lcom/shabakaty/downloader/me0;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/n56;->a:Ljava/lang/Object;

    iput p2, p0, Lcom/shabakaty/downloader/n56;->d:I

    iput-object p3, p0, Lcom/shabakaty/downloader/n56;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/shabakaty/downloader/n56;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[I[Ljava/lang/String;I)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/shabakaty/downloader/n56;->a:Ljava/lang/Object;

    .line 12
    iput-object p2, p0, Lcom/shabakaty/downloader/n56;->b:Ljava/lang/Object;

    .line 13
    iput-object p3, p0, Lcom/shabakaty/downloader/n56;->c:Ljava/lang/Object;

    .line 14
    iput p4, p0, Lcom/shabakaty/downloader/n56;->d:I

    return-void
.end method

.method public static declared-synchronized d(Landroid/content/Context;)Lcom/shabakaty/downloader/n56;
    .locals 4

    const-class v0, Lcom/shabakaty/downloader/n56;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/n56;->e:Lcom/shabakaty/downloader/n56;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/n56;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/nw2;

    const-string v3, "MessengerIpcClient"

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/nw2;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 4
    invoke-static {v3, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 5
    invoke-static {v2}, Ljava/util/concurrent/Executors;->unconfigurableScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    .line 6
    invoke-direct {v1, p0, v2}, Lcom/shabakaty/downloader/n56;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;)V

    sput-object v1, Lcom/shabakaty/downloader/n56;->e:Lcom/shabakaty/downloader/n56;

    .line 7
    :cond_0
    sget-object p0, Lcom/shabakaty/downloader/n56;->e:Lcom/shabakaty/downloader/n56;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a(Ljava/lang/String;JIJ)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :goto_0
    iget v3, p0, Lcom/shabakaty/downloader/n56;->d:I

    if-ge v2, v3, :cond_4

    .line 3
    iget-object v3, p0, Lcom/shabakaty/downloader/n56;->a:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v3, p0, Lcom/shabakaty/downloader/n56;->b:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, [I

    aget v4, v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 6
    :cond_0
    move-object v4, v3

    check-cast v4, [I

    aget v4, v4, v2

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    .line 7
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, p0, Lcom/shabakaty/downloader/n56;->c:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    aget-object v4, v4, v2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 8
    :cond_1
    move-object v4, v3

    check-cast v4, [I

    aget v4, v4, v2

    const/4 v6, 0x3

    if-ne v4, v6, :cond_2

    .line 9
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, p0, Lcom/shabakaty/downloader/n56;->c:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    aget-object v4, v4, v2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 10
    :cond_2
    check-cast v3, [I

    aget v3, v3, v2

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    .line 11
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, p0, Lcom/shabakaty/downloader/n56;->c:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    aget-object v4, v4, v2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/shabakaty/downloader/n56;->a:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    aget-object p1, p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/shabakaty/downloader/wu0;
    .locals 3

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/n56;->d:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 2
    new-instance v1, Lcom/shabakaty/downloader/la3;

    const/16 v2, 0x10

    invoke-direct {v1, v2, v0}, Lcom/shabakaty/downloader/la3;-><init>(II)V

    goto :goto_1

    .line 3
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/la3;

    invoke-direct {v0, v1, v1}, Lcom/shabakaty/downloader/la3;-><init>(II)V

    move-object v1, v0

    .line 4
    :goto_1
    iput-object v1, p0, Lcom/shabakaty/downloader/n56;->b:Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/n56;->a:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/cr4;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/n56;->b:Ljava/lang/Object;

    check-cast p1, Lcom/shabakaty/downloader/la3;

    iget-object v2, p0, Lcom/shabakaty/downloader/n56;->c:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/ma3;

    invoke-virtual {v0, v1, p2, p1, v2}, Lcom/shabakaty/downloader/cr4;->d(Ljava/io/Reader;Ljava/lang/String;Lcom/shabakaty/downloader/la3;Lcom/shabakaty/downloader/ma3;)Lcom/shabakaty/downloader/wu0;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized c(Lcom/shabakaty/downloader/oc7;)Lcom/shabakaty/downloader/uk4;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/shabakaty/downloader/oc7<",
            "TT;>;)",
            "Lcom/shabakaty/downloader/uk4<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MessengerIpcClient"

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Queueing "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/n56;->c:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ra6;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ra6;->b(Lcom/shabakaty/downloader/oc7;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/ra6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/shabakaty/downloader/ra6;-><init>(Lcom/shabakaty/downloader/n56;Lcom/shabakaty/downloader/jl3;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/n56;->c:Ljava/lang/Object;

    .line 5
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ra6;->b(Lcom/shabakaty/downloader/oc7;)Z

    .line 6
    :cond_1
    iget-object p1, p1, Lcom/shabakaty/downloader/oc7;->b:Lcom/shabakaty/downloader/zk4;

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
