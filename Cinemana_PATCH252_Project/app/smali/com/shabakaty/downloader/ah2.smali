.class public final Lcom/shabakaty/downloader/ah2;
.super Ljava/lang/Object;
.source "LeastRecentlyUsedCacheEvictor.java"

# interfaces
.implements Lcom/shabakaty/downloader/tp;


# instance fields
.field public final a:J

.field public final b:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lcom/shabakaty/downloader/eq;",
            ">;"
        }
    .end annotation
.end field

.field public c:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/shabakaty/downloader/ah2;->a:J

    .line 3
    new-instance p1, Ljava/util/TreeSet;

    sget-object p2, Lcom/shabakaty/downloader/z84;->u:Lcom/shabakaty/downloader/z84;

    invoke-direct {p1, p2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/ah2;->b:Ljava/util/TreeSet;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/np;Lcom/shabakaty/downloader/eq;Lcom/shabakaty/downloader/eq;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ah2;->b:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-wide v0, p0, Lcom/shabakaty/downloader/ah2;->c:J

    iget-wide v2, p2, Lcom/shabakaty/downloader/eq;->t:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/ah2;->c:J

    .line 3
    invoke-virtual {p0, p1, p3}, Lcom/shabakaty/downloader/ah2;->c(Lcom/shabakaty/downloader/np;Lcom/shabakaty/downloader/eq;)V

    return-void
.end method

.method public b(Lcom/shabakaty/downloader/np;Lcom/shabakaty/downloader/eq;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/ah2;->b:Ljava/util/TreeSet;

    invoke-virtual {p1, p2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-wide v0, p0, Lcom/shabakaty/downloader/ah2;->c:J

    iget-wide p1, p2, Lcom/shabakaty/downloader/eq;->t:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/shabakaty/downloader/ah2;->c:J

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/np;Lcom/shabakaty/downloader/eq;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ah2;->b:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 2
    iget-wide v0, p0, Lcom/shabakaty/downloader/ah2;->c:J

    iget-wide v2, p2, Lcom/shabakaty/downloader/eq;->t:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/ah2;->c:J

    const-wide/16 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lcom/shabakaty/downloader/ah2;->f(Lcom/shabakaty/downloader/np;J)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e(Lcom/shabakaty/downloader/np;Ljava/lang/String;JJ)V
    .locals 0

    const-wide/16 p2, -0x1

    cmp-long p4, p5, p2

    if-eqz p4, :cond_0

    .line 1
    invoke-virtual {p0, p1, p5, p6}, Lcom/shabakaty/downloader/ah2;->f(Lcom/shabakaty/downloader/np;J)V

    :cond_0
    return-void
.end method

.method public final f(Lcom/shabakaty/downloader/np;J)V
    .locals 5

    .line 1
    :goto_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/ah2;->c:J

    add-long/2addr v0, p2

    iget-wide v2, p0, Lcom/shabakaty/downloader/ah2;->a:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/ah2;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ah2;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/eq;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/np;->c(Lcom/shabakaty/downloader/eq;)V

    goto :goto_0

    :cond_0
    return-void
.end method
