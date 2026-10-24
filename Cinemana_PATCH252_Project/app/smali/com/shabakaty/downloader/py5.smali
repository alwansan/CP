.class public Lcom/shabakaty/downloader/py5;
.super Ljava/lang/Object;


# instance fields
.field public volatile a:Lcom/shabakaty/downloader/y26;

.field public volatile b:Lcom/shabakaty/downloader/hn5;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/shabakaty/downloader/nr5;->a()Lcom/shabakaty/downloader/nr5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/py5;->b:Lcom/shabakaty/downloader/hn5;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/py5;->b:Lcom/shabakaty/downloader/hn5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/hn5;->size()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/py5;->a:Lcom/shabakaty/downloader/y26;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/py5;->a:Lcom/shabakaty/downloader/y26;

    invoke-interface {v0}, Lcom/shabakaty/downloader/y26;->s()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lcom/shabakaty/downloader/y26;)Lcom/shabakaty/downloader/y26;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/py5;->a:Lcom/shabakaty/downloader/y26;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/py5;->a:Lcom/shabakaty/downloader/y26;

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/shabakaty/downloader/py5;->a:Lcom/shabakaty/downloader/y26;

    sget-object v0, Lcom/shabakaty/downloader/hn5;->s:Lcom/shabakaty/downloader/hn5;

    iput-object v0, p0, Lcom/shabakaty/downloader/py5;->b:Lcom/shabakaty/downloader/hn5;
    :try_end_1
    .catch Lcom/shabakaty/downloader/cx5; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/shabakaty/downloader/py5;->a:Lcom/shabakaty/downloader/y26;

    sget-object p1, Lcom/shabakaty/downloader/hn5;->s:Lcom/shabakaty/downloader/hn5;

    iput-object p1, p0, Lcom/shabakaty/downloader/py5;->b:Lcom/shabakaty/downloader/hn5;

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/py5;->a:Lcom/shabakaty/downloader/y26;

    return-object p1
.end method

.method public final c()Lcom/shabakaty/downloader/hn5;
    .locals 1

    iget-object v0, p0, Lcom/shabakaty/downloader/py5;->b:Lcom/shabakaty/downloader/hn5;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/py5;->b:Lcom/shabakaty/downloader/hn5;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/py5;->b:Lcom/shabakaty/downloader/hn5;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/shabakaty/downloader/py5;->b:Lcom/shabakaty/downloader/hn5;

    monitor-exit p0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/py5;->a:Lcom/shabakaty/downloader/y26;

    if-nez v0, :cond_2

    sget-object v0, Lcom/shabakaty/downloader/hn5;->s:Lcom/shabakaty/downloader/hn5;

    :goto_0
    iput-object v0, p0, Lcom/shabakaty/downloader/py5;->b:Lcom/shabakaty/downloader/hn5;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/shabakaty/downloader/py5;->a:Lcom/shabakaty/downloader/y26;

    invoke-interface {v0}, Lcom/shabakaty/downloader/y26;->n()Lcom/shabakaty/downloader/hn5;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/py5;->b:Lcom/shabakaty/downloader/hn5;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/shabakaty/downloader/py5;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/shabakaty/downloader/py5;

    iget-object v0, p0, Lcom/shabakaty/downloader/py5;->a:Lcom/shabakaty/downloader/y26;

    iget-object v1, p1, Lcom/shabakaty/downloader/py5;->a:Lcom/shabakaty/downloader/y26;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/shabakaty/downloader/py5;->c()Lcom/shabakaty/downloader/hn5;

    move-result-object v0

    invoke-virtual {p1}, Lcom/shabakaty/downloader/py5;->c()Lcom/shabakaty/downloader/hn5;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/hn5;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/shabakaty/downloader/g36;->b()Lcom/shabakaty/downloader/y26;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/py5;->b(Lcom/shabakaty/downloader/y26;)Lcom/shabakaty/downloader/y26;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    invoke-interface {v1}, Lcom/shabakaty/downloader/g36;->b()Lcom/shabakaty/downloader/y26;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/py5;->b(Lcom/shabakaty/downloader/y26;)Lcom/shabakaty/downloader/y26;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
