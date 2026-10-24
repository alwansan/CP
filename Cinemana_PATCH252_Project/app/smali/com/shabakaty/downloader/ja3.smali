.class public final Lcom/shabakaty/downloader/ja3;
.super Ljava/lang/Object;
.source "ParentalSkipHandler.kt"


# instance fields
.field public a:Lcom/shabakaty/downloader/j71;

.field public b:J

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public e:I

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/j71;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/j71;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    const-string v0, "player"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/ja3;->a:Lcom/shabakaty/downloader/j71;

    .line 2
    sget-object p1, Lcom/shabakaty/downloader/w21;->r:Lcom/shabakaty/downloader/w21;

    iput-object p1, p0, Lcom/shabakaty/downloader/ja3;->c:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/ja3;->d:Ljava/util/List;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/shabakaty/downloader/ja3;->f:Z

    .line 5
    iput-boolean p1, p0, Lcom/shabakaty/downloader/ja3;->g:Z

    .line 6
    invoke-virtual {p0, p2, p3}, Lcom/shabakaty/downloader/ja3;->c(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ja3;->g:Z

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ja3;->a:Lcom/shabakaty/downloader/j71;

    invoke-interface {v0}, Lcom/shabakaty/downloader/bd3;->C()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shabakaty/downloader/ja3;->b:J

    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/ja3;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, -0x1

    add-int/2addr v1, v2

    if-ltz v1, :cond_4

    :goto_0
    add-int/lit8 v3, v0, 0x1

    .line 4
    iget-wide v4, p0, Lcom/shabakaty/downloader/ja3;->b:J

    iget-object v6, p0, Lcom/shabakaty/downloader/ja3;->c:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0xfa

    sub-long/2addr v6, v8

    cmp-long v10, v4, v6

    if-ltz v10, :cond_2

    iget-wide v4, p0, Lcom/shabakaty/downloader/ja3;->b:J

    iget-object v6, p0, Lcom/shabakaty/downloader/ja3;->d:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    add-long/2addr v6, v8

    cmp-long v10, v4, v6

    if-gez v10, :cond_2

    .line 5
    iput v0, p0, Lcom/shabakaty/downloader/ja3;->e:I

    .line 6
    :try_start_0
    iget-boolean v0, p0, Lcom/shabakaty/downloader/ja3;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/ja3;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/ja3;->a:Lcom/shabakaty/downloader/j71;

    .line 8
    invoke-interface {v0}, Lcom/shabakaty/downloader/bd3;->C()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shabakaty/downloader/ja3;->b:J

    .line 9
    iget v0, p0, Lcom/shabakaty/downloader/ja3;->e:I

    if-eq v0, v2, :cond_0

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/ja3;->d:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 11
    iget-object v3, p0, Lcom/shabakaty/downloader/ja3;->a:Lcom/shabakaty/downloader/j71;

    add-long/2addr v0, v8

    .line 12
    invoke-interface {v3, v0, v1}, Lcom/shabakaty/downloader/bd3;->q(J)V

    .line 13
    iput v2, p0, Lcom/shabakaty/downloader/ja3;->e:I

    .line 14
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 15
    invoke-static {v0}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    .line 16
    :goto_1
    invoke-static {v0}, Lcom/shabakaty/downloader/dt3;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-static {v0}, Lcom/shabakaty/downloader/wt2;->j(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 17
    :cond_2
    iput v2, p0, Lcom/shabakaty/downloader/ja3;->e:I

    if-le v3, v1, :cond_3

    goto :goto_2

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public final b(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-boolean p1, p0, Lcom/shabakaty/downloader/ja3;->f:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ja3;->f:Z

    .line 3
    iput-boolean v1, p0, Lcom/shabakaty/downloader/ja3;->g:Z

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ja3;->a()V

    goto :goto_0

    .line 5
    :cond_0
    iput-boolean v1, p0, Lcom/shabakaty/downloader/ja3;->g:Z

    goto :goto_0

    .line 6
    :cond_1
    iput-boolean v0, p0, Lcom/shabakaty/downloader/ja3;->g:Z

    :goto_0
    return-void
.end method

.method public final c(Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/shabakaty/downloader/ja3;->e:I

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-wide/16 v3, 0x3e8

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    double-to-long v5, v5

    mul-long v5, v5, v3

    .line 5
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/shabakaty/downloader/ja3;->c:Ljava/util/List;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p2, v1}, Lcom/shabakaty/downloader/i50;->O(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    double-to-long v0, v0

    mul-long v0, v0, v3

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iput-object p1, p0, Lcom/shabakaty/downloader/ja3;->d:Ljava/util/List;

    return-void
.end method
