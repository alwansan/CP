.class public Lcom/shabakaty/downloader/oo0;
.super Ljava/lang/Object;
.source "DefaultLoadControl.java"

# interfaces
.implements Lcom/shabakaty/downloader/fj2;


# instance fields
.field public final a:Lcom/shabakaty/downloader/fn0;

.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:I

.field public final g:J

.field public h:I

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/fn0;

    const/4 v1, 0x1

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/fn0;-><init>(ZI)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x9c4

    const/4 v2, 0x0

    const-string v3, "bufferForPlaybackMs"

    const-string v4, "0"

    .line 3
    invoke-static {v1, v2, v3, v4}, Lcom/shabakaty/downloader/oo0;->j(IILjava/lang/String;Ljava/lang/String;)V

    const/16 v5, 0x1388

    const-string v6, "bufferForPlaybackAfterRebufferMs"

    .line 4
    invoke-static {v5, v2, v6, v4}, Lcom/shabakaty/downloader/oo0;->j(IILjava/lang/String;Ljava/lang/String;)V

    const v7, 0xc350

    const-string v8, "minBufferMs"

    .line 5
    invoke-static {v7, v1, v8, v3}, Lcom/shabakaty/downloader/oo0;->j(IILjava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {v7, v5, v8, v6}, Lcom/shabakaty/downloader/oo0;->j(IILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "maxBufferMs"

    .line 7
    invoke-static {v7, v7, v3, v8}, Lcom/shabakaty/downloader/oo0;->j(IILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "backBufferDurationMs"

    .line 8
    invoke-static {v2, v2, v3, v4}, Lcom/shabakaty/downloader/oo0;->j(IILjava/lang/String;Ljava/lang/String;)V

    .line 9
    iput-object v0, p0, Lcom/shabakaty/downloader/oo0;->a:Lcom/shabakaty/downloader/fn0;

    int-to-long v3, v7

    .line 10
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/shabakaty/downloader/oo0;->b:J

    .line 11
    invoke-static {v3, v4}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/shabakaty/downloader/oo0;->c:J

    int-to-long v0, v1

    .line 12
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shabakaty/downloader/oo0;->d:J

    int-to-long v0, v5

    .line 13
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shabakaty/downloader/oo0;->e:J

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/shabakaty/downloader/oo0;->f:I

    const/high16 v0, 0xc80000

    .line 15
    iput v0, p0, Lcom/shabakaty/downloader/oo0;->h:I

    int-to-long v0, v2

    .line 16
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/jp;->c(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shabakaty/downloader/oo0;->g:J

    return-void
.end method

.method public static j(IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x15

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be less than "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/shabakaty/downloader/md;->c(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/oo0;->g:J

    return-wide v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/oo0;->k(Z)V

    return-void
.end method

.method public d([Lcom/shabakaty/downloader/lr3;Lcom/shabakaty/downloader/cp4;[Lcom/shabakaty/downloader/f81;)V
    .locals 5

    .line 1
    iget p2, p0, Lcom/shabakaty/downloader/oo0;->f:I

    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    const/4 p2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    const/high16 v3, 0xc80000

    if-ge v0, v2, :cond_6

    .line 3
    aget-object v2, p3, v0

    if-eqz v2, :cond_5

    .line 4
    aget-object v2, p1, v0

    invoke-interface {v2}, Lcom/shabakaty/downloader/lr3;->x()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    const/high16 v3, 0x20000

    goto :goto_1

    :cond_2
    const/high16 v3, 0x7d00000

    goto :goto_1

    :cond_3
    const/high16 v3, 0x89a0000

    :cond_4
    :goto_1
    add-int/2addr v1, v3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_6
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 7
    :cond_7
    iput p2, p0, Lcom/shabakaty/downloader/oo0;->h:I

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/oo0;->a:Lcom/shabakaty/downloader/fn0;

    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/fn0;->b(I)V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/oo0;->k(Z)V

    return-void
.end method

.method public f(JFZJ)Z
    .locals 3

    .line 1
    invoke-static {p1, p2, p3}, Lcom/shabakaty/downloader/sy4;->y(JF)J

    move-result-wide p1

    if-eqz p4, :cond_0

    .line 2
    iget-wide p3, p0, Lcom/shabakaty/downloader/oo0;->e:J

    goto :goto_0

    :cond_0
    iget-wide p3, p0, Lcom/shabakaty/downloader/oo0;->d:J

    :goto_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p5, v0

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x2

    .line 3
    div-long/2addr p5, v0

    invoke-static {p5, p6, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :cond_1
    const-wide/16 p5, 0x0

    cmp-long v0, p3, p5

    if-lez v0, :cond_3

    cmp-long p5, p1, p3

    if-gez p5, :cond_3

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/oo0;->a:Lcom/shabakaty/downloader/fn0;

    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget p2, p1, Lcom/shabakaty/downloader/fn0;->e:I

    iget p3, p1, Lcom/shabakaty/downloader/fn0;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int p2, p2, p3

    monitor-exit p1

    .line 7
    iget p1, p0, Lcom/shabakaty/downloader/oo0;->h:I

    if-lt p2, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 8
    monitor-exit p1

    throw p2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method

.method public g(JJF)Z
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/oo0;->a:Lcom/shabakaty/downloader/fn0;

    .line 2
    monitor-enter p1

    .line 3
    :try_start_0
    iget p2, p1, Lcom/shabakaty/downloader/fn0;->e:I

    iget v0, p1, Lcom/shabakaty/downloader/fn0;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-int p2, p2, v0

    monitor-exit p1

    .line 4
    iget p1, p0, Lcom/shabakaty/downloader/oo0;->h:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lt p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-wide v2, p0, Lcom/shabakaty/downloader/oo0;->b:J

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p2, p5, p2

    if-lez p2, :cond_1

    .line 6
    invoke-static {v2, v3, p5}, Lcom/shabakaty/downloader/sy4;->u(JF)J

    move-result-wide v2

    .line 7
    iget-wide v4, p0, Lcom/shabakaty/downloader/oo0;->c:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    :cond_1
    const-wide/32 v4, 0x7a120

    .line 8
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    cmp-long p2, p3, v2

    if-gez p2, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 9
    :goto_1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/oo0;->i:Z

    if-nez v0, :cond_5

    cmp-long p1, p3, v4

    if-gez p1, :cond_5

    const-string p1, "DefaultLoadControl"

    const-string p2, "Target buffer size reached with less than 500ms of buffered media data."

    .line 10
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 11
    :cond_3
    iget-wide v2, p0, Lcom/shabakaty/downloader/oo0;->c:J

    cmp-long p2, p3, v2

    if-gez p2, :cond_4

    if-eqz p1, :cond_5

    .line 12
    :cond_4
    iput-boolean v1, p0, Lcom/shabakaty/downloader/oo0;->i:Z

    .line 13
    :cond_5
    :goto_2
    iget-boolean p1, p0, Lcom/shabakaty/downloader/oo0;->i:Z

    return p1

    :catchall_0
    move-exception p2

    .line 14
    monitor-exit p1

    throw p2
.end method

.method public h()Lcom/shabakaty/downloader/fn0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/oo0;->a:Lcom/shabakaty/downloader/fn0;

    return-object v0
.end method

.method public i()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/oo0;->k(Z)V

    return-void
.end method

.method public final k(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/oo0;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/high16 v0, 0xc80000

    .line 2
    :cond_0
    iput v0, p0, Lcom/shabakaty/downloader/oo0;->h:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/oo0;->i:Z

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/oo0;->a:Lcom/shabakaty/downloader/fn0;

    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-boolean v1, p1, Lcom/shabakaty/downloader/fn0;->a:Z

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/fn0;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_1
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    :cond_2
    :goto_0
    return-void
.end method
