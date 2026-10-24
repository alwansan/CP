.class public final Lcom/google/android/exoplayer2/source/rtsp/b;
.super Ljava/lang/Object;
.source "RtpDataLoadable.java"

# interfaces
.implements Lcom/shabakaty/downloader/ij2$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/rtsp/b$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/shabakaty/downloader/cv3;

.field public final c:Lcom/google/android/exoplayer2/source/rtsp/b$a;

.field public final d:Lcom/shabakaty/downloader/p91;

.field public final e:Landroid/os/Handler;

.field public final f:Lcom/google/android/exoplayer2/source/rtsp/a$a;

.field public g:Lcom/shabakaty/downloader/uu3;

.field public volatile h:Z

.field public volatile i:J

.field public volatile j:J


# direct methods
.method public constructor <init>(ILcom/shabakaty/downloader/cv3;Lcom/google/android/exoplayer2/source/rtsp/b$a;Lcom/shabakaty/downloader/p91;Lcom/google/android/exoplayer2/source/rtsp/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->a:I

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->b:Lcom/shabakaty/downloader/cv3;

    .line 4
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->c:Lcom/google/android/exoplayer2/source/rtsp/b$a;

    .line 5
    iput-object p4, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->d:Lcom/shabakaty/downloader/p91;

    .line 6
    invoke-static {}, Lcom/shabakaty/downloader/sy4;->l()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->e:Landroid/os/Handler;

    .line 7
    iput-object p5, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->f:Lcom/google/android/exoplayer2/source/rtsp/a$a;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->i:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->f:Lcom/google/android/exoplayer2/source/rtsp/a$a;

    iget v2, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->a:I

    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/source/rtsp/a$a;->a(I)Lcom/google/android/exoplayer2/source/rtsp/a;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/rtsp/a;->d()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->e:Landroid/os/Handler;

    new-instance v3, Lcom/shabakaty/downloader/pr;

    invoke-direct {v3, p0, v1, v0}, Lcom/shabakaty/downloader/pr;-><init>(Lcom/google/android/exoplayer2/source/rtsp/b;Ljava/lang/String;Lcom/google/android/exoplayer2/source/rtsp/a;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/co0;

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    move-object v3, v1

    move-object v4, v0

    .line 5
    invoke-direct/range {v3 .. v8}, Lcom/shabakaty/downloader/co0;-><init>(Lcom/shabakaty/downloader/rl0;JJ)V

    .line 6
    new-instance v2, Lcom/shabakaty/downloader/uu3;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->b:Lcom/shabakaty/downloader/cv3;

    iget-object v3, v3, Lcom/shabakaty/downloader/cv3;->a:Lcom/shabakaty/downloader/zu3;

    iget v4, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->a:I

    invoke-direct {v2, v3, v4}, Lcom/shabakaty/downloader/uu3;-><init>(Lcom/shabakaty/downloader/zu3;I)V

    iput-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->g:Lcom/shabakaty/downloader/uu3;

    .line 7
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->d:Lcom/shabakaty/downloader/p91;

    invoke-virtual {v2, v3}, Lcom/shabakaty/downloader/uu3;->g(Lcom/shabakaty/downloader/p91;)V

    .line 8
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->h:Z

    if-nez v2, :cond_2

    .line 9
    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->i:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 10
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->g:Lcom/shabakaty/downloader/uu3;

    iget-wide v6, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->j:J

    iget-wide v8, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->i:J

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/shabakaty/downloader/uu3;->b(JJ)V

    .line 11
    iput-wide v4, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->i:J

    .line 12
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->g:Lcom/shabakaty/downloader/uu3;

    new-instance v3, Lcom/shabakaty/downloader/ie3;

    invoke-direct {v3}, Lcom/shabakaty/downloader/ie3;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/shabakaty/downloader/uu3;->f(Lcom/shabakaty/downloader/o91;Lcom/shabakaty/downloader/ie3;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 13
    :cond_2
    :try_start_1
    invoke-interface {v0}, Lcom/shabakaty/downloader/vl0;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catchall_0
    move-exception v1

    .line 14
    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    if-eqz v0, :cond_3

    .line 15
    :try_start_2
    invoke-interface {v0}, Lcom/shabakaty/downloader/vl0;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 16
    :catch_1
    :cond_3
    throw v1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/rtsp/b;->h:Z

    return-void
.end method
