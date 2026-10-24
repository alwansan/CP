.class public final Lcom/shabakaty/downloader/qv1$a;
.super Lcom/shabakaty/downloader/wk4;
.source "TaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/qv1;-><init>(Lcom/shabakaty/downloader/qv1$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/shabakaty/downloader/qv1;

.field public final synthetic f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/shabakaty/downloader/qv1;J)V
    .locals 0

    iput-object p3, p0, Lcom/shabakaty/downloader/qv1$a;->e:Lcom/shabakaty/downloader/qv1;

    iput-wide p4, p0, Lcom/shabakaty/downloader/qv1$a;->f:J

    const/4 p1, 0x1

    .line 1
    invoke-direct {p0, p2, p1}, Lcom/shabakaty/downloader/wk4;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/qv1$a;->e:Lcom/shabakaty/downloader/qv1;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/qv1$a;->e:Lcom/shabakaty/downloader/qv1;

    .line 3
    iget-wide v2, v1, Lcom/shabakaty/downloader/qv1;->E:J

    .line 4
    iget-wide v4, v1, Lcom/shabakaty/downloader/qv1;->D:J

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmp-long v8, v2, v4

    if-gez v8, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v4, v2

    .line 5
    iput-wide v4, v1, Lcom/shabakaty/downloader/qv1;->D:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 6
    :goto_0
    monitor-exit v0

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    .line 7
    sget-object v2, Lcom/shabakaty/downloader/s41;->t:Lcom/shabakaty/downloader/s41;

    invoke-virtual {v1, v2, v2, v0}, Lcom/shabakaty/downloader/qv1;->a(Lcom/shabakaty/downloader/s41;Lcom/shabakaty/downloader/s41;Ljava/io/IOException;)V

    const-wide/16 v0, -0x1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v1, v6, v7, v6}, Lcom/shabakaty/downloader/qv1;->j(ZII)V

    .line 9
    iget-wide v0, p0, Lcom/shabakaty/downloader/qv1$a;->f:J

    :goto_1
    return-wide v0

    :catchall_0
    move-exception v1

    .line 10
    monitor-exit v0

    throw v1
.end method
