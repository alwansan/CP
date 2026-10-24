.class public abstract Lcom/shabakaty/downloader/mg4;
.super Lcom/shabakaty/downloader/q83;
.source "SubtitleOutputBuffer.java"

# interfaces
.implements Lcom/shabakaty/downloader/bg4;


# instance fields
.field public t:Lcom/shabakaty/downloader/bg4;

.field public u:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/q83;-><init>()V

    return-void
.end method


# virtual methods
.method public I()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/shabakaty/downloader/ao;->r:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/shabakaty/downloader/mg4;->t:Lcom/shabakaty/downloader/bg4;

    return-void
.end method

.method public J(JLcom/shabakaty/downloader/bg4;J)V
    .locals 2

    .line 1
    iput-wide p1, p0, Lcom/shabakaty/downloader/q83;->s:J

    .line 2
    iput-object p3, p0, Lcom/shabakaty/downloader/mg4;->t:Lcom/shabakaty/downloader/bg4;

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p3, p4, v0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move-wide p1, p4

    .line 3
    :goto_0
    iput-wide p1, p0, Lcom/shabakaty/downloader/mg4;->u:J

    return-void
.end method

.method public f(J)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mg4;->t:Lcom/shabakaty/downloader/bg4;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-wide v1, p0, Lcom/shabakaty/downloader/mg4;->u:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/bg4;->f(J)I

    move-result p1

    return p1
.end method

.method public h(I)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mg4;->t:Lcom/shabakaty/downloader/bg4;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/bg4;->h(I)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/shabakaty/downloader/mg4;->u:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public j(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/shabakaty/downloader/vg0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mg4;->t:Lcom/shabakaty/downloader/bg4;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-wide v1, p0, Lcom/shabakaty/downloader/mg4;->u:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/shabakaty/downloader/bg4;->j(J)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public n()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/mg4;->t:Lcom/shabakaty/downloader/bg4;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-interface {v0}, Lcom/shabakaty/downloader/bg4;->n()I

    move-result v0

    return v0
.end method
