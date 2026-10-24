.class public final Lcom/shabakaty/downloader/yb4;
.super Ljava/lang/Object;
.source "StartOffsetExtractorInput.java"

# interfaces
.implements Lcom/shabakaty/downloader/o91;


# instance fields
.field public final a:Lcom/shabakaty/downloader/o91;

.field public final b:J


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/o91;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/yb4;->a:Lcom/shabakaty/downloader/o91;

    .line 3
    invoke-interface {p1}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v0

    cmp-long p1, v0, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 4
    iput-wide p2, p0, Lcom/shabakaty/downloader/yb4;->b:J

    return-void
.end method


# virtual methods
.method public b()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yb4;->a:Lcom/shabakaty/downloader/o91;

    invoke-interface {v0}, Lcom/shabakaty/downloader/o91;->b()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/shabakaty/downloader/yb4;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public c()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yb4;->a:Lcom/shabakaty/downloader/o91;

    invoke-interface {v0}, Lcom/shabakaty/downloader/o91;->c()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/shabakaty/downloader/yb4;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public f([BIIZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yb4;->a:Lcom/shabakaty/downloader/o91;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/o91;->f([BIIZ)Z

    move-result p1

    return p1
.end method

.method public i([BIIZ)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yb4;->a:Lcom/shabakaty/downloader/o91;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/shabakaty/downloader/o91;->i([BIIZ)Z

    move-result p1

    return p1
.end method

.method public j()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yb4;->a:Lcom/shabakaty/downloader/o91;

    invoke-interface {v0}, Lcom/shabakaty/downloader/o91;->j()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcom/shabakaty/downloader/yb4;->b:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public l(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yb4;->a:Lcom/shabakaty/downloader/o91;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/o91;->l(I)V

    return-void
.end method

.method public m(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yb4;->a:Lcom/shabakaty/downloader/o91;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/o91;->m(I)I

    move-result p1

    return p1
.end method

.method public n([BII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yb4;->a:Lcom/shabakaty/downloader/o91;

    invoke-interface {v0, p1, p2, p3}, Lcom/shabakaty/downloader/o91;->n([BII)I

    move-result p1

    return p1
.end method

.method public p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yb4;->a:Lcom/shabakaty/downloader/o91;

    invoke-interface {v0}, Lcom/shabakaty/downloader/o91;->p()V

    return-void
.end method

.method public q(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yb4;->a:Lcom/shabakaty/downloader/o91;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/o91;->q(I)V

    return-void
.end method

.method public read([BII)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yb4;->a:Lcom/shabakaty/downloader/o91;

    invoke-interface {v0, p1, p2, p3}, Lcom/shabakaty/downloader/o91;->read([BII)I

    move-result p1

    return p1
.end method

.method public readFully([BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yb4;->a:Lcom/shabakaty/downloader/o91;

    invoke-interface {v0, p1, p2, p3}, Lcom/shabakaty/downloader/o91;->readFully([BII)V

    return-void
.end method

.method public s([BII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yb4;->a:Lcom/shabakaty/downloader/o91;

    invoke-interface {v0, p1, p2, p3}, Lcom/shabakaty/downloader/o91;->s([BII)V

    return-void
.end method
