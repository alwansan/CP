.class public Lcom/facebook/ProgressOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ProgressOutputStream.java"

# interfaces
.implements Lcom/facebook/RequestOutputStream;


# instance fields
.field public final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/GraphRequest;",
            "Lcom/facebook/RequestProgress;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Lcom/facebook/GraphRequestBatch;

.field public final t:J

.field public u:J

.field public v:J

.field public w:J

.field public x:Lcom/facebook/RequestProgress;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/facebook/GraphRequestBatch;Ljava/util/Map;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Lcom/facebook/GraphRequestBatch;",
            "Ljava/util/Map<",
            "Lcom/facebook/GraphRequest;",
            "Lcom/facebook/RequestProgress;",
            ">;J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 2
    iput-object p2, p0, Lcom/facebook/ProgressOutputStream;->s:Lcom/facebook/GraphRequestBatch;

    .line 3
    iput-object p3, p0, Lcom/facebook/ProgressOutputStream;->r:Ljava/util/Map;

    .line 4
    iput-wide p4, p0, Lcom/facebook/ProgressOutputStream;->w:J

    .line 5
    sget-object p1, Lcom/facebook/FacebookSdk;->a:Ljava/util/HashSet;

    .line 6
    invoke-static {}, Lcom/facebook/internal/Validate;->e()V

    .line 7
    sget-object p1, Lcom/facebook/FacebookSdk;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    .line 8
    iput-wide p1, p0, Lcom/facebook/ProgressOutputStream;->t:J

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/GraphRequest;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/facebook/ProgressOutputStream;->r:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/RequestProgress;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/facebook/ProgressOutputStream;->x:Lcom/facebook/RequestProgress;

    return-void
.end method

.method public final b(J)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/facebook/ProgressOutputStream;->x:Lcom/facebook/RequestProgress;

    if-eqz v0, :cond_1

    .line 2
    iget-wide v1, v0, Lcom/facebook/RequestProgress;->d:J

    add-long/2addr v1, p1

    iput-wide v1, v0, Lcom/facebook/RequestProgress;->d:J

    .line 3
    iget-wide v3, v0, Lcom/facebook/RequestProgress;->e:J

    iget-wide v5, v0, Lcom/facebook/RequestProgress;->c:J

    add-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    iget-wide v3, v0, Lcom/facebook/RequestProgress;->f:J

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/RequestProgress;->a()V

    .line 5
    :cond_1
    iget-wide v0, p0, Lcom/facebook/ProgressOutputStream;->u:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/ProgressOutputStream;->u:J

    .line 6
    iget-wide p1, p0, Lcom/facebook/ProgressOutputStream;->v:J

    iget-wide v2, p0, Lcom/facebook/ProgressOutputStream;->t:J

    add-long/2addr p1, v2

    cmp-long v2, v0, p1

    if-gez v2, :cond_2

    iget-wide p1, p0, Lcom/facebook/ProgressOutputStream;->w:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_3

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/facebook/ProgressOutputStream;->c()V

    :cond_3
    return-void
.end method

.method public final c()V
    .locals 9

    .line 1
    iget-wide v0, p0, Lcom/facebook/ProgressOutputStream;->u:J

    iget-wide v2, p0, Lcom/facebook/ProgressOutputStream;->v:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 2
    iget-object v0, p0, Lcom/facebook/ProgressOutputStream;->s:Lcom/facebook/GraphRequestBatch;

    .line 3
    iget-object v0, v0, Lcom/facebook/GraphRequestBatch;->u:Ljava/util/List;

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/GraphRequestBatch$Callback;

    .line 5
    instance-of v2, v1, Lcom/facebook/GraphRequestBatch$OnProgressCallback;

    if-eqz v2, :cond_0

    .line 6
    iget-object v4, p0, Lcom/facebook/ProgressOutputStream;->s:Lcom/facebook/GraphRequestBatch;

    .line 7
    iget-object v2, v4, Lcom/facebook/GraphRequestBatch;->r:Landroid/os/Handler;

    .line 8
    move-object v3, v1

    check-cast v3, Lcom/facebook/GraphRequestBatch$OnProgressCallback;

    if-nez v2, :cond_1

    .line 9
    iget-wide v5, p0, Lcom/facebook/ProgressOutputStream;->u:J

    iget-wide v7, p0, Lcom/facebook/ProgressOutputStream;->w:J

    invoke-interface/range {v3 .. v8}, Lcom/facebook/GraphRequestBatch$OnProgressCallback;->b(Lcom/facebook/GraphRequestBatch;JJ)V

    goto :goto_0

    .line 10
    :cond_1
    new-instance v1, Lcom/facebook/ProgressOutputStream$1;

    invoke-direct {v1, p0, v3}, Lcom/facebook/ProgressOutputStream$1;-><init>(Lcom/facebook/ProgressOutputStream;Lcom/facebook/GraphRequestBatch$OnProgressCallback;)V

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 11
    :cond_2
    iget-wide v0, p0, Lcom/facebook/ProgressOutputStream;->u:J

    iput-wide v0, p0, Lcom/facebook/ProgressOutputStream;->v:J

    :cond_3
    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 2
    iget-object v0, p0, Lcom/facebook/ProgressOutputStream;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/RequestProgress;

    .line 3
    invoke-virtual {v1}, Lcom/facebook/RequestProgress;->a()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ProgressOutputStream;->c()V

    return-void
.end method

.method public write(I)V
    .locals 2

    .line 5
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    const-wide/16 v0, 0x1

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/facebook/ProgressOutputStream;->b(J)V

    return-void
.end method

.method public write([B)V
    .locals 2

    .line 1
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 2
    array-length p1, p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ProgressOutputStream;->b(J)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 3
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long p1, p3

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ProgressOutputStream;->b(J)V

    return-void
.end method
