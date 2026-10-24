.class public abstract Lcom/shabakaty/downloader/pj;
.super Ljava/lang/Object;
.source "BaseMediaChunkIterator.java"

# interfaces
.implements Lcom/shabakaty/downloader/mo2;


# instance fields
.field public final b:J

.field public final c:J

.field public d:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/shabakaty/downloader/pj;->b:J

    .line 3
    iput-wide p3, p0, Lcom/shabakaty/downloader/pj;->c:J

    const-wide/16 p3, 0x1

    sub-long/2addr p1, p3

    .line 4
    iput-wide p1, p0, Lcom/shabakaty/downloader/pj;->d:J

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/pj;->d:J

    iget-wide v2, p0, Lcom/shabakaty/downloader/pj;->b:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v2, p0, Lcom/shabakaty/downloader/pj;->c:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public next()Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/pj;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/shabakaty/downloader/pj;->d:J

    .line 2
    iget-wide v2, p0, Lcom/shabakaty/downloader/pj;->c:J

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v4

    return v0
.end method
