.class public final Lcom/shabakaty/downloader/ua3;
.super Ljava/lang/Object;
.source "PassthroughSectionPayloadReader.java"

# interfaces
.implements Lcom/shabakaty/downloader/tz3;


# instance fields
.field public a:Lcom/shabakaty/downloader/wh1;

.field public b:Lcom/shabakaty/downloader/qn4;

.field public c:Lcom/shabakaty/downloader/fp4;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/wh1$b;

    invoke-direct {v0}, Lcom/shabakaty/downloader/wh1$b;-><init>()V

    .line 3
    iput-object p1, v0, Lcom/shabakaty/downloader/wh1$b;->k:Ljava/lang/String;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ua3;->a:Lcom/shabakaty/downloader/wh1;

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/ka3;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ua3;->b:Lcom/shabakaty/downloader/qn4;

    invoke-static {v0}, Lcom/shabakaty/downloader/md;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget v0, Lcom/shabakaty/downloader/sy4;->a:I

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/ua3;->b:Lcom/shabakaty/downloader/qn4;

    .line 4
    monitor-enter v0

    .line 5
    :try_start_0
    iget-wide v1, v0, Lcom/shabakaty/downloader/qn4;->c:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 6
    iget-wide v5, v0, Lcom/shabakaty/downloader/qn4;->b:J

    add-long/2addr v1, v5

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qn4;->c()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-wide v6, v1

    .line 8
    monitor-exit v0

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/ua3;->b:Lcom/shabakaty/downloader/qn4;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qn4;->d()J

    move-result-wide v0

    cmp-long v2, v6, v3

    if-eqz v2, :cond_3

    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/shabakaty/downloader/ua3;->a:Lcom/shabakaty/downloader/wh1;

    iget-wide v3, v2, Lcom/shabakaty/downloader/wh1;->G:J

    cmp-long v5, v0, v3

    if-eqz v5, :cond_2

    .line 11
    invoke-virtual {v2}, Lcom/shabakaty/downloader/wh1;->a()Lcom/shabakaty/downloader/wh1$b;

    move-result-object v2

    .line 12
    iput-wide v0, v2, Lcom/shabakaty/downloader/wh1$b;->o:J

    .line 13
    invoke-virtual {v2}, Lcom/shabakaty/downloader/wh1$b;->a()Lcom/shabakaty/downloader/wh1;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ua3;->a:Lcom/shabakaty/downloader/wh1;

    .line 14
    iget-object v1, p0, Lcom/shabakaty/downloader/ua3;->c:Lcom/shabakaty/downloader/fp4;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    .line 15
    :cond_2
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ka3;->a()I

    move-result v9

    .line 16
    iget-object v0, p0, Lcom/shabakaty/downloader/ua3;->c:Lcom/shabakaty/downloader/fp4;

    invoke-interface {v0, p1, v9}, Lcom/shabakaty/downloader/fp4;->a(Lcom/shabakaty/downloader/ka3;I)V

    .line 17
    iget-object v5, p0, Lcom/shabakaty/downloader/ua3;->c:Lcom/shabakaty/downloader/fp4;

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/shabakaty/downloader/fp4;->b(JIIILcom/shabakaty/downloader/fp4$a;)V

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0

    throw p1
.end method

.method public c(Lcom/shabakaty/downloader/qn4;Lcom/shabakaty/downloader/p91;Lcom/shabakaty/downloader/kr4$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/ua3;->b:Lcom/shabakaty/downloader/qn4;

    .line 2
    invoke-virtual {p3}, Lcom/shabakaty/downloader/kr4$d;->a()V

    .line 3
    invoke-virtual {p3}, Lcom/shabakaty/downloader/kr4$d;->c()I

    move-result p1

    const/4 p3, 0x5

    invoke-interface {p2, p1, p3}, Lcom/shabakaty/downloader/p91;->h(II)Lcom/shabakaty/downloader/fp4;

    move-result-object p1

    iput-object p1, p0, Lcom/shabakaty/downloader/ua3;->c:Lcom/shabakaty/downloader/fp4;

    .line 4
    iget-object p2, p0, Lcom/shabakaty/downloader/ua3;->a:Lcom/shabakaty/downloader/wh1;

    invoke-interface {p1, p2}, Lcom/shabakaty/downloader/fp4;->f(Lcom/shabakaty/downloader/wh1;)V

    return-void
.end method
