.class public final Lcom/shabakaty/downloader/tf1$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "FlowableCombineLatest.java"

# interfaces
.implements Lcom/shabakaty/downloader/wg1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/tf1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcom/shabakaty/downloader/lf4;",
        ">;",
        "Lcom/shabakaty/downloader/wg1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/tf1$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/tf1$a<",
            "TT;*>;"
        }
    .end annotation
.end field

.field public final s:I

.field public final t:I

.field public final u:I

.field public v:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/tf1$a;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/tf1$a<",
            "TT;*>;II)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/tf1$b;->r:Lcom/shabakaty/downloader/tf1$a;

    .line 3
    iput p2, p0, Lcom/shabakaty/downloader/tf1$b;->s:I

    .line 4
    iput p3, p0, Lcom/shabakaty/downloader/tf1$b;->t:I

    shr-int/lit8 p1, p3, 0x2

    sub-int/2addr p3, p1

    .line 5
    iput p3, p0, Lcom/shabakaty/downloader/tf1$b;->u:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tf1$b;->r:Lcom/shabakaty/downloader/tf1$a;

    iget v1, p0, Lcom/shabakaty/downloader/tf1$b;->s:I

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tf1$a;->l(I)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tf1$b;->r:Lcom/shabakaty/downloader/tf1$a;

    iget v1, p0, Lcom/shabakaty/downloader/tf1$b;->s:I

    .line 2
    iget-object v2, v0, Lcom/shabakaty/downloader/tf1$a;->D:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, p1}, Lcom/shabakaty/downloader/d61;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    iget-boolean p1, v0, Lcom/shabakaty/downloader/tf1$a;->w:Z

    if-nez p1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/tf1$a;->h()V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, v0, Lcom/shabakaty/downloader/tf1$a;->C:Z

    .line 6
    invoke-virtual {v0}, Lcom/shabakaty/downloader/tf1$a;->k()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/tf1$a;->l(I)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/tf1$b;->v:I

    add-int/lit8 v0, v0, 0x1

    .line 2
    iget v1, p0, Lcom/shabakaty/downloader/tf1$b;->u:I

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/shabakaty/downloader/tf1$b;->v:I

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/lf4;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/shabakaty/downloader/lf4;->u(J)V

    goto :goto_0

    .line 5
    :cond_0
    iput v0, p0, Lcom/shabakaty/downloader/tf1$b;->v:I

    :goto_0
    return-void
.end method

.method public d(Lcom/shabakaty/downloader/lf4;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/tf1$b;->t:I

    int-to-long v0, v0

    .line 2
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/pf4;->D(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/lf4;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {p1, v0, v1}, Lcom/shabakaty/downloader/lf4;->u(J)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tf1$b;->r:Lcom/shabakaty/downloader/tf1$a;

    iget v1, p0, Lcom/shabakaty/downloader/tf1$b;->s:I

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, v0, Lcom/shabakaty/downloader/tf1$a;->v:[Ljava/lang/Object;

    .line 4
    iget v3, v0, Lcom/shabakaty/downloader/tf1$a;->y:I

    .line 5
    aget-object v4, v2, v1

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 6
    iput v3, v0, Lcom/shabakaty/downloader/tf1$a;->y:I

    .line 7
    :cond_0
    aput-object p1, v2, v1

    .line 8
    array-length p1, v2

    if-ne p1, v3, :cond_1

    .line 9
    iget-object p1, v0, Lcom/shabakaty/downloader/tf1$a;->u:Lcom/shabakaty/downloader/ua4;

    iget-object v3, v0, Lcom/shabakaty/downloader/tf1$a;->t:[Lcom/shabakaty/downloader/tf1$b;

    aget-object v3, v3, v1

    invoke-virtual {v2}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lcom/shabakaty/downloader/ua4;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 10
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, v0, Lcom/shabakaty/downloader/tf1$a;->t:[Lcom/shabakaty/downloader/tf1$b;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/tf1$b;->c()V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/tf1$a;->k()V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
