.class public final Lcom/shabakaty/downloader/wt0$b;
.super Lcom/shabakaty/downloader/wk4;
.source "DiskLruCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/wt0;-><init>(Lcom/shabakaty/downloader/za1;Ljava/io/File;IIJLcom/shabakaty/downloader/il4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/shabakaty/downloader/wt0;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wt0;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/wt0$b;->e:Lcom/shabakaty/downloader/wt0;

    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p2, p1}, Lcom/shabakaty/downloader/wk4;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wt0$b;->e:Lcom/shabakaty/downloader/wt0;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/wt0$b;->e:Lcom/shabakaty/downloader/wt0;

    .line 3
    iget-boolean v2, v1, Lcom/shabakaty/downloader/wt0;->B:Z

    const-wide/16 v3, -0x1

    if-eqz v2, :cond_2

    .line 4
    iget-boolean v2, v1, Lcom/shabakaty/downloader/wt0;->C:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x1

    .line 5
    :try_start_1
    invoke-virtual {v1}, Lcom/shabakaty/downloader/wt0;->t()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 6
    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/shabakaty/downloader/wt0$b;->e:Lcom/shabakaty/downloader/wt0;

    .line 7
    iput-boolean v2, v1, Lcom/shabakaty/downloader/wt0;->D:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcom/shabakaty/downloader/wt0$b;->e:Lcom/shabakaty/downloader/wt0;

    .line 9
    invoke-virtual {v1}, Lcom/shabakaty/downloader/wt0;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/wt0$b;->e:Lcom/shabakaty/downloader/wt0;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/wt0;->p()V

    .line 11
    iget-object v1, p0, Lcom/shabakaty/downloader/wt0$b;->e:Lcom/shabakaty/downloader/wt0;

    const/4 v5, 0x0

    .line 12
    iput v5, v1, Lcom/shabakaty/downloader/wt0;->y:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 13
    :catch_1
    :try_start_4
    iget-object v1, p0, Lcom/shabakaty/downloader/wt0$b;->e:Lcom/shabakaty/downloader/wt0;

    .line 14
    iput-boolean v2, v1, Lcom/shabakaty/downloader/wt0;->E:Z

    .line 15
    new-instance v2, Lcom/shabakaty/downloader/mm;

    invoke-direct {v2}, Lcom/shabakaty/downloader/mm;-><init>()V

    .line 16
    invoke-static {v2}, Lcom/shabakaty/downloader/md0;->c(Lcom/shabakaty/downloader/l84;)Lcom/shabakaty/downloader/do;

    move-result-object v2

    .line 17
    iput-object v2, v1, Lcom/shabakaty/downloader/wt0;->w:Lcom/shabakaty/downloader/do;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 18
    :cond_1
    :goto_1
    monitor-exit v0

    return-wide v3

    .line 19
    :cond_2
    :goto_2
    monitor-exit v0

    return-wide v3

    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    throw v1
.end method
