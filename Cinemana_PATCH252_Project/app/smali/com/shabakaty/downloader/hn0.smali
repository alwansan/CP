.class public final synthetic Lcom/shabakaty/downloader/hn0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/shabakaty/downloader/vy2$b;


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/in0;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/in0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/hn0;->a:Lcom/shabakaty/downloader/in0;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 10

    iget-object v6, p0, Lcom/shabakaty/downloader/hn0;->a:Lcom/shabakaty/downloader/in0;

    .line 1
    monitor-enter v6

    .line 2
    :try_start_0
    iget v0, v6, Lcom/shabakaty/downloader/in0;->i:I

    if-eqz v0, :cond_0

    iget-boolean v1, v6, Lcom/shabakaty/downloader/in0;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 3
    monitor-exit v6

    goto :goto_2

    :cond_0
    if-ne v0, p1, :cond_1

    .line 4
    monitor-exit v6

    goto :goto_2

    .line 5
    :cond_1
    :try_start_1
    iput p1, v6, Lcom/shabakaty/downloader/in0;->i:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    if-eqz p1, :cond_4

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {v6, p1}, Lcom/shabakaty/downloader/in0;->j(I)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/shabakaty/downloader/in0;->l:J

    .line 7
    iget-object p1, v6, Lcom/shabakaty/downloader/in0;->d:Lcom/shabakaty/downloader/w30;

    invoke-interface {p1}, Lcom/shabakaty/downloader/w30;->d()J

    move-result-wide v7

    .line 8
    iget p1, v6, Lcom/shabakaty/downloader/in0;->f:I

    const/4 v9, 0x0

    if-lez p1, :cond_3

    iget-wide v0, v6, Lcom/shabakaty/downloader/in0;->g:J

    sub-long v0, v7, v0

    long-to-int p1, v0

    move v1, p1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 9
    :goto_0
    iget-wide v2, v6, Lcom/shabakaty/downloader/in0;->h:J

    iget-wide v4, v6, Lcom/shabakaty/downloader/in0;->l:J

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/shabakaty/downloader/in0;->l(IJJ)V

    .line 10
    iput-wide v7, v6, Lcom/shabakaty/downloader/in0;->g:J

    const-wide/16 v0, 0x0

    .line 11
    iput-wide v0, v6, Lcom/shabakaty/downloader/in0;->h:J

    .line 12
    iput-wide v0, v6, Lcom/shabakaty/downloader/in0;->k:J

    .line 13
    iput-wide v0, v6, Lcom/shabakaty/downloader/in0;->j:J

    .line 14
    iget-object p1, v6, Lcom/shabakaty/downloader/in0;->c:Lcom/shabakaty/downloader/x84;

    .line 15
    iget-object v0, p1, Lcom/shabakaty/downloader/x84;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, -0x1

    .line 16
    iput v0, p1, Lcom/shabakaty/downloader/x84;->d:I

    .line 17
    iput v9, p1, Lcom/shabakaty/downloader/x84;->e:I

    .line 18
    iput v9, p1, Lcom/shabakaty/downloader/x84;->f:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    monitor-exit v6

    goto :goto_2

    .line 20
    :cond_4
    :goto_1
    monitor-exit v6

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v6

    throw p1
.end method
