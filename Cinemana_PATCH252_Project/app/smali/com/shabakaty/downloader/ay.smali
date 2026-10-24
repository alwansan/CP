.class public abstract Lcom/shabakaty/downloader/ay;
.super Ljava/lang/Object;
.source "CeaDecoder.java"

# interfaces
.implements Lcom/shabakaty/downloader/cg4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/ay$c;,
        Lcom/shabakaty/downloader/ay$b;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/shabakaty/downloader/ay$b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/shabakaty/downloader/mg4;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Lcom/shabakaty/downloader/ay$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/shabakaty/downloader/ay$b;

.field public e:J

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/ay;->a:Ljava/util/ArrayDeque;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/shabakaty/downloader/ay;->a:Ljava/util/ArrayDeque;

    new-instance v3, Lcom/shabakaty/downloader/ay$b;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/shabakaty/downloader/ay$b;-><init>(Lcom/shabakaty/downloader/ay$a;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lcom/shabakaty/downloader/ay;->b:Ljava/util/ArrayDeque;

    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/shabakaty/downloader/ay;->b:Ljava/util/ArrayDeque;

    new-instance v2, Lcom/shabakaty/downloader/ay$c;

    new-instance v3, Lcom/shabakaty/downloader/cu;

    invoke-direct {v3, p0}, Lcom/shabakaty/downloader/cu;-><init>(Lcom/shabakaty/downloader/ay;)V

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/ay$c;-><init>(Lcom/shabakaty/downloader/q83$a;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6
    :cond_1
    new-instance v0, Ljava/util/PriorityQueue;

    invoke-direct {v0}, Ljava/util/PriorityQueue;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/ay;->c:Ljava/util/PriorityQueue;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/shabakaty/downloader/ay;->e:J

    return-void
.end method

.method public bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ay;->h()Lcom/shabakaty/downloader/mg4;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ay;->d:Lcom/shabakaty/downloader/ay$b;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->e(Z)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ay;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/ay;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ay$b;

    iput-object v0, p0, Lcom/shabakaty/downloader/ay;->d:Lcom/shabakaty/downloader/ay$b;

    :goto_1
    return-object v0
.end method

.method public e(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/lg4;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ay;->d:Lcom/shabakaty/downloader/ay$b;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 3
    check-cast p1, Lcom/shabakaty/downloader/ay$b;

    .line 4
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ao;->E()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/ay;->j(Lcom/shabakaty/downloader/ay$b;)V

    goto :goto_1

    .line 6
    :cond_1
    iget-wide v0, p0, Lcom/shabakaty/downloader/ay;->f:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/shabakaty/downloader/ay;->f:J

    .line 7
    iput-wide v0, p1, Lcom/shabakaty/downloader/ay$b;->A:J

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/ay;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0, p1}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/shabakaty/downloader/ay;->d:Lcom/shabakaty/downloader/ay$b;

    return-void
.end method

.method public abstract f()Lcom/shabakaty/downloader/bg4;
.end method

.method public flush()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/shabakaty/downloader/ay;->f:J

    .line 2
    iput-wide v0, p0, Lcom/shabakaty/downloader/ay;->e:J

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ay;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/ay;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ay$b;

    sget v1, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ay;->j(Lcom/shabakaty/downloader/ay$b;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ay;->d:Lcom/shabakaty/downloader/ay$b;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ay;->j(Lcom/shabakaty/downloader/ay$b;)V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/shabakaty/downloader/ay;->d:Lcom/shabakaty/downloader/ay$b;

    :cond_1
    return-void
.end method

.method public abstract g(Lcom/shabakaty/downloader/lg4;)V
.end method

.method public h()Lcom/shabakaty/downloader/mg4;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/ay;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/ay;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/shabakaty/downloader/ay;->c:Ljava/util/PriorityQueue;

    .line 3
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ay$b;

    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    iget-wide v2, v0, Lcom/shabakaty/downloader/bn0;->v:J

    iget-wide v4, p0, Lcom/shabakaty/downloader/ay;->e:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_3

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/ay;->c:Ljava/util/PriorityQueue;

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/ay$b;

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/ao;->F()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    iget-object v1, p0, Lcom/shabakaty/downloader/ay;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/mg4;

    const/4 v2, 0x4

    .line 7
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/ao;->u(I)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ay;->j(Lcom/shabakaty/downloader/ay$b;)V

    return-object v1

    .line 9
    :cond_1
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ay;->g(Lcom/shabakaty/downloader/lg4;)V

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ay;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/ay;->f()Lcom/shabakaty/downloader/bg4;

    move-result-object v6

    .line 12
    iget-object v1, p0, Lcom/shabakaty/downloader/ay;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/mg4;

    .line 13
    iget-wide v4, v0, Lcom/shabakaty/downloader/bn0;->v:J

    const-wide v7, 0x7fffffffffffffffL

    move-object v3, v1

    invoke-virtual/range {v3 .. v8}, Lcom/shabakaty/downloader/mg4;->J(JLcom/shabakaty/downloader/bg4;J)V

    .line 14
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ay;->j(Lcom/shabakaty/downloader/ay$b;)V

    return-object v1

    .line 15
    :cond_2
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ay;->j(Lcom/shabakaty/downloader/ay$b;)V

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public abstract i()Z
.end method

.method public final j(Lcom/shabakaty/downloader/ay$b;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/shabakaty/downloader/bn0;->H()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/ay;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method
