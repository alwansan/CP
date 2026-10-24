.class public final Lcom/shabakaty/downloader/yp;
.super Ljava/lang/Object;
.source "CacheInterceptor.kt"

# interfaces
.implements Lcom/shabakaty/downloader/r94;


# instance fields
.field public r:Z

.field public final synthetic s:Lcom/shabakaty/downloader/eo;

.field public final synthetic t:Lcom/shabakaty/downloader/dq;

.field public final synthetic u:Lcom/shabakaty/downloader/do;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/eo;Lcom/shabakaty/downloader/dq;Lcom/shabakaty/downloader/do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/yp;->s:Lcom/shabakaty/downloader/eo;

    iput-object p2, p0, Lcom/shabakaty/downloader/yp;->t:Lcom/shabakaty/downloader/dq;

    iput-object p3, p0, Lcom/shabakaty/downloader/yp;->u:Lcom/shabakaty/downloader/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public C1(Lcom/shabakaty/downloader/zn;J)J
    .locals 8

    const-string v0, "sink"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/yp;->s:Lcom/shabakaty/downloader/eo;

    invoke-interface {v1, p1, p2, p3}, Lcom/shabakaty/downloader/r94;->C1(Lcom/shabakaty/downloader/zn;J)J

    move-result-wide p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, -0x1

    cmp-long v3, p2, v1

    if-nez v3, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/shabakaty/downloader/yp;->r:Z

    if-nez p1, :cond_0

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/yp;->r:Z

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/yp;->u:Lcom/shabakaty/downloader/do;

    invoke-interface {p1}, Lcom/shabakaty/downloader/l84;->close()V

    :cond_0
    return-wide v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/yp;->u:Lcom/shabakaty/downloader/do;

    invoke-interface {v0}, Lcom/shabakaty/downloader/do;->i()Lcom/shabakaty/downloader/zn;

    move-result-object v3

    .line 6
    iget-wide v0, p1, Lcom/shabakaty/downloader/zn;->s:J

    sub-long v4, v0, p2

    move-object v2, p1

    move-wide v6, p2

    .line 7
    invoke-virtual/range {v2 .. v7}, Lcom/shabakaty/downloader/zn;->c(Lcom/shabakaty/downloader/zn;JJ)Lcom/shabakaty/downloader/zn;

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/yp;->u:Lcom/shabakaty/downloader/do;

    invoke-interface {p1}, Lcom/shabakaty/downloader/do;->f0()Lcom/shabakaty/downloader/do;

    return-wide p2

    :catch_0
    move-exception p1

    .line 9
    iget-boolean p2, p0, Lcom/shabakaty/downloader/yp;->r:Z

    if-nez p2, :cond_2

    .line 10
    iput-boolean v0, p0, Lcom/shabakaty/downloader/yp;->r:Z

    .line 11
    iget-object p2, p0, Lcom/shabakaty/downloader/yp;->t:Lcom/shabakaty/downloader/dq;

    invoke-interface {p2}, Lcom/shabakaty/downloader/dq;->a()V

    .line 12
    :cond_2
    throw p1
.end method

.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/yp;->r:Z

    if-nez v0, :cond_0

    const/16 v0, 0x64

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, v0, v1}, Lcom/shabakaty/downloader/ry4;->h(Lcom/shabakaty/downloader/r94;ILjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/yp;->r:Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/yp;->t:Lcom/shabakaty/downloader/dq;

    invoke-interface {v0}, Lcom/shabakaty/downloader/dq;->a()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/yp;->s:Lcom/shabakaty/downloader/eo;

    invoke-interface {v0}, Lcom/shabakaty/downloader/r94;->close()V

    return-void
.end method

.method public l()Lcom/shabakaty/downloader/on4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yp;->s:Lcom/shabakaty/downloader/eo;

    invoke-interface {v0}, Lcom/shabakaty/downloader/r94;->l()Lcom/shabakaty/downloader/on4;

    move-result-object v0

    return-object v0
.end method
