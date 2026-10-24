.class public final Lcom/shabakaty/downloader/v30$a;
.super Lcom/shabakaty/downloader/di1;
.source "ClippingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/v30;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/nn4;JJ)V
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/di1;-><init>(Lcom/shabakaty/downloader/nn4;)V

    .line 2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/nn4;->i()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/nn4$c;

    invoke-direct {v0}, Lcom/shabakaty/downloader/nn4$c;-><init>()V

    invoke-virtual {p1, v2, v0}, Lcom/shabakaty/downloader/nn4;->n(ILcom/shabakaty/downloader/nn4$c;)Lcom/shabakaty/downloader/nn4$c;

    move-result-object p1

    const-wide/16 v3, 0x0

    .line 4
    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 5
    iget-boolean v0, p1, Lcom/shabakaty/downloader/nn4$c;->l:Z

    if-nez v0, :cond_1

    cmp-long v0, p2, v3

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/shabakaty/downloader/nn4$c;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Lcom/shabakaty/downloader/v30$b;

    invoke-direct {p1, v1}, Lcom/shabakaty/downloader/v30$b;-><init>(I)V

    throw p1

    :cond_1
    :goto_0
    const-wide/high16 v5, -0x8000000000000000L

    cmp-long v0, p4, v5

    if-nez v0, :cond_2

    .line 7
    iget-wide p4, p1, Lcom/shabakaty/downloader/nn4$c;->n:J

    goto :goto_1

    :cond_2
    invoke-static {v3, v4, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    .line 8
    :goto_1
    iget-wide v3, p1, Lcom/shabakaty/downloader/nn4$c;->n:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_5

    cmp-long v7, p4, v3

    if-lez v7, :cond_3

    move-wide p4, v3

    :cond_3
    cmp-long v7, p2, p4

    if-gtz v7, :cond_4

    goto :goto_2

    .line 9
    :cond_4
    new-instance p1, Lcom/shabakaty/downloader/v30$b;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/v30$b;-><init>(I)V

    throw p1

    .line 10
    :cond_5
    :goto_2
    iput-wide p2, p0, Lcom/shabakaty/downloader/v30$a;->c:J

    .line 11
    iput-wide p4, p0, Lcom/shabakaty/downloader/v30$a;->d:J

    cmp-long v7, p4, v5

    if-nez v7, :cond_6

    goto :goto_3

    :cond_6
    sub-long v5, p4, p2

    .line 12
    :goto_3
    iput-wide v5, p0, Lcom/shabakaty/downloader/v30$a;->e:J

    .line 13
    iget-boolean p1, p1, Lcom/shabakaty/downloader/nn4$c;->i:Z

    if-eqz p1, :cond_7

    if-eqz v7, :cond_8

    if-eqz v0, :cond_7

    cmp-long p1, p4, v3

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :cond_8
    :goto_4
    iput-boolean v1, p0, Lcom/shabakaty/downloader/v30$a;->f:Z

    return-void

    .line 14
    :cond_9
    new-instance p1, Lcom/shabakaty/downloader/v30$b;

    invoke-direct {p1, v2}, Lcom/shabakaty/downloader/v30$b;-><init>(I)V

    throw p1
.end method


# virtual methods
.method public g(ILcom/shabakaty/downloader/nn4$b;Z)Lcom/shabakaty/downloader/nn4$b;
    .locals 12

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/di1;->b:Lcom/shabakaty/downloader/nn4;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3}, Lcom/shabakaty/downloader/nn4;->g(ILcom/shabakaty/downloader/nn4$b;Z)Lcom/shabakaty/downloader/nn4$b;

    .line 2
    iget-wide v0, p2, Lcom/shabakaty/downloader/nn4$b;->e:J

    .line 3
    iget-wide v2, p0, Lcom/shabakaty/downloader/v30$a;->c:J

    sub-long v10, v0, v2

    .line 4
    iget-wide v0, p0, Lcom/shabakaty/downloader/v30$a;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    move-wide v8, v2

    goto :goto_0

    :cond_0
    sub-long/2addr v0, v10

    move-wide v8, v0

    .line 5
    :goto_0
    iget-object v5, p2, Lcom/shabakaty/downloader/nn4$b;->a:Ljava/lang/Object;

    iget-object v6, p2, Lcom/shabakaty/downloader/nn4$b;->b:Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v4, p2

    invoke-virtual/range {v4 .. v11}, Lcom/shabakaty/downloader/nn4$b;->f(Ljava/lang/Object;Ljava/lang/Object;IJJ)Lcom/shabakaty/downloader/nn4$b;

    return-object p2
.end method

.method public o(ILcom/shabakaty/downloader/nn4$c;J)Lcom/shabakaty/downloader/nn4$c;
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/di1;->b:Lcom/shabakaty/downloader/nn4;

    const/4 p3, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p3, p2, v0, v1}, Lcom/shabakaty/downloader/nn4;->o(ILcom/shabakaty/downloader/nn4$c;J)Lcom/shabakaty/downloader/nn4$c;

    .line 2
    iget-wide p3, p2, Lcom/shabakaty/downloader/nn4$c;->q:J

    iget-wide v0, p0, Lcom/shabakaty/downloader/v30$a;->c:J

    add-long/2addr p3, v0

    iput-wide p3, p2, Lcom/shabakaty/downloader/nn4$c;->q:J

    .line 3
    iget-wide p3, p0, Lcom/shabakaty/downloader/v30$a;->e:J

    iput-wide p3, p2, Lcom/shabakaty/downloader/nn4$c;->n:J

    .line 4
    iget-boolean p1, p0, Lcom/shabakaty/downloader/v30$a;->f:Z

    iput-boolean p1, p2, Lcom/shabakaty/downloader/nn4$c;->i:Z

    .line 5
    iget-wide p3, p2, Lcom/shabakaty/downloader/nn4$c;->m:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, v2

    if-eqz p1, :cond_1

    .line 6
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p2, Lcom/shabakaty/downloader/nn4$c;->m:J

    .line 7
    iget-wide v0, p0, Lcom/shabakaty/downloader/v30$a;->d:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    :goto_0
    iput-wide p3, p2, Lcom/shabakaty/downloader/nn4$c;->m:J

    .line 8
    iget-wide v0, p0, Lcom/shabakaty/downloader/v30$a;->c:J

    sub-long/2addr p3, v0

    iput-wide p3, p2, Lcom/shabakaty/downloader/nn4$c;->m:J

    .line 9
    :cond_1
    iget-wide p3, p0, Lcom/shabakaty/downloader/v30$a;->c:J

    invoke-static {p3, p4}, Lcom/shabakaty/downloader/jp;->d(J)J

    move-result-wide p3

    .line 10
    iget-wide v0, p2, Lcom/shabakaty/downloader/nn4$c;->e:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    add-long/2addr v0, p3

    .line 11
    iput-wide v0, p2, Lcom/shabakaty/downloader/nn4$c;->e:J

    .line 12
    :cond_2
    iget-wide v0, p2, Lcom/shabakaty/downloader/nn4$c;->f:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    add-long/2addr v0, p3

    .line 13
    iput-wide v0, p2, Lcom/shabakaty/downloader/nn4$c;->f:J

    :cond_3
    return-object p2
.end method
