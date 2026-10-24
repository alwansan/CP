.class public final Lcom/shabakaty/downloader/wt0$a;
.super Ljava/lang/Object;
.source "DiskLruCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/wt0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:[Z

.field public b:Z

.field public final c:Lcom/shabakaty/downloader/wt0$d;

.field public final synthetic d:Lcom/shabakaty/downloader/wt0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wt0;Lcom/shabakaty/downloader/wt0$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/wt0$d;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/wt0$a;->d:Lcom/shabakaty/downloader/wt0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/shabakaty/downloader/wt0$a;->c:Lcom/shabakaty/downloader/wt0$d;

    .line 2
    iget-boolean p2, p2, Lcom/shabakaty/downloader/wt0$d;->d:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p1, Lcom/shabakaty/downloader/wt0;->L:I

    .line 4
    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lcom/shabakaty/downloader/wt0$a;->a:[Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0$a;->d:Lcom/shabakaty/downloader/wt0;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/shabakaty/downloader/wt0$a;->b:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/wt0$a;->c:Lcom/shabakaty/downloader/wt0$d;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/wt0$d;->f:Lcom/shabakaty/downloader/wt0$a;

    .line 5
    invoke-static {v1, p0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/wt0$a;->d:Lcom/shabakaty/downloader/wt0;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lcom/shabakaty/downloader/wt0;->b(Lcom/shabakaty/downloader/wt0$a;Z)V

    .line 7
    :cond_0
    iput-boolean v2, p0, Lcom/shabakaty/downloader/wt0$a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string v1, "Check failed."

    .line 9
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0

    throw v1
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0$a;->d:Lcom/shabakaty/downloader/wt0;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/shabakaty/downloader/wt0$a;->b:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/wt0$a;->c:Lcom/shabakaty/downloader/wt0$d;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/wt0$d;->f:Lcom/shabakaty/downloader/wt0$a;

    .line 5
    invoke-static {v1, p0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/wt0$a;->d:Lcom/shabakaty/downloader/wt0;

    invoke-virtual {v1, p0, v2}, Lcom/shabakaty/downloader/wt0;->b(Lcom/shabakaty/downloader/wt0$a;Z)V

    .line 7
    :cond_0
    iput-boolean v2, p0, Lcom/shabakaty/downloader/wt0$a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string v1, "Check failed."

    .line 9
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0

    throw v1
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0$a;->c:Lcom/shabakaty/downloader/wt0$d;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/wt0$d;->f:Lcom/shabakaty/downloader/wt0$a;

    .line 3
    invoke-static {v0, p0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0$a;->d:Lcom/shabakaty/downloader/wt0;

    .line 5
    iget-boolean v1, v0, Lcom/shabakaty/downloader/wt0;->A:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p0, v1}, Lcom/shabakaty/downloader/wt0;->b(Lcom/shabakaty/downloader/wt0$a;Z)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0$a;->c:Lcom/shabakaty/downloader/wt0$d;

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lcom/shabakaty/downloader/wt0$d;->e:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final d(I)Lcom/shabakaty/downloader/l84;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0$a;->d:Lcom/shabakaty/downloader/wt0;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/shabakaty/downloader/wt0$a;->b:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/wt0$a;->c:Lcom/shabakaty/downloader/wt0$d;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/wt0$d;->f:Lcom/shabakaty/downloader/wt0$a;

    .line 5
    invoke-static {v1, p0}, Lcom/shabakaty/downloader/j32;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 6
    new-instance p1, Lcom/shabakaty/downloader/mm;

    invoke-direct {p1}, Lcom/shabakaty/downloader/mm;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v0

    return-object p1

    .line 8
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/shabakaty/downloader/wt0$a;->c:Lcom/shabakaty/downloader/wt0$d;

    .line 9
    iget-boolean v1, v1, Lcom/shabakaty/downloader/wt0$d;->d:Z

    if-nez v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/wt0$a;->a:[Z

    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->c(Ljava/lang/Object;)V

    aput-boolean v2, v1, p1

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/shabakaty/downloader/wt0$a;->c:Lcom/shabakaty/downloader/wt0$d;

    .line 12
    iget-object v1, v1, Lcom/shabakaty/downloader/wt0$d;->c:Ljava/util/List;

    .line 13
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :try_start_2
    iget-object v2, p0, Lcom/shabakaty/downloader/wt0$a;->d:Lcom/shabakaty/downloader/wt0;

    .line 15
    iget-object v2, v2, Lcom/shabakaty/downloader/wt0;->I:Lcom/shabakaty/downloader/za1;

    .line 16
    invoke-interface {v2, v1}, Lcom/shabakaty/downloader/za1;->b(Ljava/io/File;)Lcom/shabakaty/downloader/l84;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 17
    :try_start_3
    new-instance v2, Lcom/shabakaty/downloader/aa1;

    new-instance v3, Lcom/shabakaty/downloader/wt0$a$a;

    invoke-direct {v3, p0, p1}, Lcom/shabakaty/downloader/wt0$a$a;-><init>(Lcom/shabakaty/downloader/wt0$a;I)V

    invoke-direct {v2, v1, v3}, Lcom/shabakaty/downloader/aa1;-><init>(Lcom/shabakaty/downloader/l84;Lcom/shabakaty/downloader/tm1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v0

    return-object v2

    .line 18
    :catch_0
    :try_start_4
    new-instance p1, Lcom/shabakaty/downloader/mm;

    invoke-direct {p1}, Lcom/shabakaty/downloader/mm;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 19
    monitor-exit v0

    return-object p1

    :cond_2
    :try_start_5
    const-string p1, "Check failed."

    .line 20
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    .line 21
    monitor-exit v0

    throw p1
.end method
