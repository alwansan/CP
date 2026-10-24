.class public final Lcom/shabakaty/downloader/ml4;
.super Ljava/lang/Object;
.source "TeeDataSource.java"

# interfaces
.implements Lcom/shabakaty/downloader/vl0;


# instance fields
.field public final a:Lcom/shabakaty/downloader/vl0;

.field public final b:Lcom/shabakaty/downloader/tl0;

.field public c:Z

.field public d:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/vl0;Lcom/shabakaty/downloader/tl0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/ml4;->a:Lcom/shabakaty/downloader/vl0;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/ml4;->b:Lcom/shabakaty/downloader/tl0;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/yl0;)J
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ml4;->a:Lcom/shabakaty/downloader/vl0;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/vl0;->a(Lcom/shabakaty/downloader/yl0;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shabakaty/downloader/ml4;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 2
    :cond_0
    iget-wide v4, p1, Lcom/shabakaty/downloader/yl0;->g:J

    const-wide/16 v6, -0x1

    cmp-long v8, v4, v6

    if-nez v8, :cond_1

    cmp-long v4, v0, v6

    if-eqz v4, :cond_1

    .line 3
    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/shabakaty/downloader/yl0;->e(JJ)Lcom/shabakaty/downloader/yl0;

    move-result-object p1

    :cond_1
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ml4;->c:Z

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/ml4;->b:Lcom/shabakaty/downloader/tl0;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/tl0;->a(Lcom/shabakaty/downloader/yl0;)V

    .line 6
    iget-wide v0, p0, Lcom/shabakaty/downloader/ml4;->d:J

    return-wide v0
.end method

.method public close()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/ml4;->a:Lcom/shabakaty/downloader/vl0;

    invoke-interface {v1}, Lcom/shabakaty/downloader/vl0;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-boolean v1, p0, Lcom/shabakaty/downloader/ml4;->c:Z

    if-eqz v1, :cond_0

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ml4;->c:Z

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/ml4;->b:Lcom/shabakaty/downloader/tl0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/tl0;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 5
    iget-boolean v2, p0, Lcom/shabakaty/downloader/ml4;->c:Z

    if-eqz v2, :cond_1

    .line 6
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ml4;->c:Z

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/ml4;->b:Lcom/shabakaty/downloader/tl0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/tl0;->close()V

    .line 8
    :cond_1
    throw v1
.end method

.method public e(Lcom/shabakaty/downloader/sp4;)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ml4;->a:Lcom/shabakaty/downloader/vl0;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/vl0;->e(Lcom/shabakaty/downloader/sp4;)V

    return-void
.end method

.method public o()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ml4;->a:Lcom/shabakaty/downloader/vl0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/vl0;->o()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public r()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ml4;->a:Lcom/shabakaty/downloader/vl0;

    invoke-interface {v0}, Lcom/shabakaty/downloader/vl0;->r()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public read([BII)I
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/ml4;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p1, -0x1

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ml4;->a:Lcom/shabakaty/downloader/vl0;

    invoke-interface {v0, p1, p2, p3}, Lcom/shabakaty/downloader/rl0;->read([BII)I

    move-result p3

    if-lez p3, :cond_1

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ml4;->b:Lcom/shabakaty/downloader/tl0;

    invoke-interface {v0, p1, p2, p3}, Lcom/shabakaty/downloader/tl0;->write([BII)V

    .line 4
    iget-wide p1, p0, Lcom/shabakaty/downloader/ml4;->d:J

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    int-to-long v0, p3

    sub-long/2addr p1, v0

    .line 5
    iput-wide p1, p0, Lcom/shabakaty/downloader/ml4;->d:J

    :cond_1
    return p3
.end method
