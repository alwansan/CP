.class public final Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;
.super Landroidx/work/CoroutineWorker;
.source "CheckDownloadsStatusWorker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;",
        "Landroidx/work/CoroutineWorker;",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "params",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "shabakaty-downloader_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public A:Lcom/shabakaty/downloader/uz0;

.field public B:Lcom/shabakaty/downloader/ey0;

.field public final y:Landroid/content/Context;

.field public z:Lcom/shabakaty/downloader/i13;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;->y:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public g(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Landroidx/work/ListenableWorker$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$b;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$b;

    iget v1, v0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$b;->x:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$b;->x:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$b;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$b;-><init>(Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p1, v0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$b;->v:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$b;->x:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object v2, v0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$b;->u:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object v2, v0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$b;->u:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object p1

    const-string v2, "starting check downloads worker"

    invoke-virtual {p1, v2, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/xk0;->a:Lcom/shabakaty/downloader/uy0;

    if-nez p1, :cond_5

    goto :goto_1

    .line 6
    :cond_5
    check-cast p1, Lcom/shabakaty/downloader/wk0;

    .line 7
    iget-object v2, p1, Lcom/shabakaty/downloader/wk0;->i:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/i13;

    .line 8
    iput-object v2, p0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;->z:Lcom/shabakaty/downloader/i13;

    .line 9
    iget-object v2, p1, Lcom/shabakaty/downloader/wk0;->f:Lcom/shabakaty/downloader/oj3;

    invoke-interface {v2}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/uz0;

    .line 10
    iput-object v2, p0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;->A:Lcom/shabakaty/downloader/uz0;

    .line 11
    iget-object p1, p1, Lcom/shabakaty/downloader/wk0;->k:Lcom/shabakaty/downloader/oj3;

    invoke-interface {p1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/ey0;

    .line 12
    iput-object p1, p0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;->B:Lcom/shabakaty/downloader/ey0;

    .line 13
    :goto_1
    iput-object p0, v0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$b;->u:Ljava/lang/Object;

    iput v5, v0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$b;->x:I

    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;->k(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p0

    .line 14
    :goto_2
    invoke-virtual {v2}, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;->i()Lcom/shabakaty/downloader/uz0;

    move-result-object p1

    iput-object v2, v0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$b;->u:Ljava/lang/Object;

    iput v4, v0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$b;->x:I

    .line 15
    iget-object p1, p1, Lcom/shabakaty/downloader/uz0;->a:Lcom/shabakaty/downloader/kz0;

    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/kz0;->e(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    .line 16
    :cond_7
    :goto_3
    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_8

    goto :goto_4

    .line 17
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_9

    .line 18
    :goto_4
    :try_start_0
    invoke-virtual {v2}, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->b(Ljava/lang/Throwable;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    const/4 p1, 0x0

    .line 19
    iput-object p1, v0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$b;->u:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$b;->x:I

    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;->h(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_a

    return-object v1

    .line 20
    :cond_a
    :goto_5
    new-instance p1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    return-object p1
.end method

.method public final h(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$a;

    iget v1, v0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$a;->x:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$a;->x:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$a;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$a;-><init>(Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p1, v0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$a;->v:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$a;->x:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$a;->u:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object p1

    const-string v2, "no active downloads found, cancelling.."

    invoke-virtual {p1, v2, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/lw0$a;->b()V

    const-wide/16 v4, 0x7d0

    .line 5
    iput-object p0, v0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$a;->u:Ljava/lang/Object;

    iput v3, v0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$a;->x:I

    invoke-static {v4, v5, v0}, Lcom/shabakaty/downloader/rm3;->f(JLcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 6
    :goto_1
    sget-object p1, Lcom/shabakaty/downloader/services/DownloaderService;->x:Lcom/shabakaty/downloader/services/DownloaderService$a;

    .line 7
    iget-object v1, v0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;->y:Landroid/content/Context;

    .line 8
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/services/DownloaderService$a;->a(Landroid/content/Context;)V

    .line 9
    iget-object p1, v0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;->z:Lcom/shabakaty/downloader/i13;

    if-eqz p1, :cond_4

    .line 10
    invoke-virtual {p1}, Lcom/shabakaty/downloader/i13;->a()V

    .line 11
    sget-object p1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object p1

    :cond_4
    const-string p1, "notificationUtils"

    .line 12
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final i()Lcom/shabakaty/downloader/uz0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;->A:Lcom/shabakaty/downloader/uz0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "downloadsRepo"

    invoke-static {v0}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final j()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v0

    const-string v1, "found active downloads, starting service"

    invoke-virtual {v0, v1, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/services/DownloaderService;->x:Lcom/shabakaty/downloader/services/DownloaderService$a;

    iget-object v0, p0, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;->y:Landroid/content/Context;

    const-string v1, "context"

    .line 3
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/services/a;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/services/a;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/shabakaty/downloader/services/DownloaderService;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/services/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final k(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ud0<",
            "-",
            "Lcom/shabakaty/downloader/qv4;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$c;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$c;

    iget v3, v2, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$c;->y:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$c;->y:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$c;

    invoke-direct {v2, v0, v1}, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$c;-><init>(Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object v1, v2, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$c;->w:Ljava/lang/Object;

    sget-object v3, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v4, v2, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$c;->y:I

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_5

    if-eq v4, v8, :cond_4

    if-eq v4, v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v2, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$c;->u:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;

    invoke-static {v1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v4, v2, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$c;->v:Ljava/lang/Object;

    check-cast v4, Ljava/util/Iterator;

    iget-object v7, v2, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$c;->u:Ljava/lang/Object;

    check-cast v7, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;

    invoke-static {v1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_5

    :cond_3
    iget-object v4, v2, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$c;->u:Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;

    invoke-static {v1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v4, v2, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$c;->u:Ljava/lang/Object;

    check-cast v4, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;

    invoke-static {v1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    const-wide/16 v10, 0x3e8

    .line 4
    iput-object v0, v2, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$c;->u:Ljava/lang/Object;

    iput v8, v2, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$c;->y:I

    invoke-static {v10, v11, v2}, Lcom/shabakaty/downloader/rm3;->f(JLcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_6

    return-object v3

    :cond_6
    move-object v4, v0

    .line 5
    :goto_1
    invoke-virtual {v4}, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;->i()Lcom/shabakaty/downloader/uz0;

    move-result-object v1

    iput-object v4, v2, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$c;->u:Ljava/lang/Object;

    iput v7, v2, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$c;->y:I

    .line 6
    iget-object v1, v1, Lcom/shabakaty/downloader/uz0;->a:Lcom/shabakaty/downloader/kz0;

    invoke-interface {v1, v2}, Lcom/shabakaty/downloader/kz0;->c(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_7

    return-object v3

    :cond_7
    :goto_2
    move-object v7, v4

    .line 7
    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_9

    .line 8
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_3

    :cond_8
    const/4 v4, 0x0

    goto :goto_4

    :cond_9
    :goto_3
    const/4 v4, 0x1

    :goto_4
    if-nez v4, :cond_b

    .line 9
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v4

    const-string v10, "stopped downloads found:\n "

    invoke-static {v10, v1}, Lcom/shabakaty/downloader/j32;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10, v7}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 10
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v4

    const-string v10, "updating stopped downloads"

    invoke-virtual {v4, v10, v7}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 11
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/pw0;

    .line 12
    sget-object v10, Lcom/shabakaty/downloader/xc4;->u:Lcom/shabakaty/downloader/xc4;

    iput-object v10, v1, Lcom/shabakaty/downloader/pw0;->z:Lcom/shabakaty/downloader/xc4;

    .line 13
    iget v10, v1, Lcom/shabakaty/downloader/pw0;->r:I

    if-eqz v10, :cond_a

    .line 14
    invoke-virtual {v7}, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;->i()Lcom/shabakaty/downloader/uz0;

    move-result-object v10

    iput-object v7, v2, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$c;->u:Ljava/lang/Object;

    iput-object v4, v2, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$c;->v:Ljava/lang/Object;

    iput v6, v2, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$c;->y:I

    invoke-virtual {v10, v1, v2}, Lcom/shabakaty/downloader/uz0;->i(Lcom/shabakaty/downloader/pw0;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_a

    return-object v3

    .line 15
    :cond_b
    invoke-virtual {v7}, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;->i()Lcom/shabakaty/downloader/uz0;

    move-result-object v1

    iput-object v7, v2, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$c;->u:Ljava/lang/Object;

    iput-object v9, v2, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$c;->v:Ljava/lang/Object;

    iput v5, v2, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker$c;->y:I

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/uz0;->c(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_c

    return-object v3

    :cond_c
    move-object v2, v7

    :goto_6
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_e

    .line 16
    iget-object v1, v2, Lcom/shabakaty/downloader/workers/CheckDownloadsStatusWorker;->B:Lcom/shabakaty/downloader/ey0;

    if-eqz v1, :cond_d

    .line 17
    iget-object v2, v1, Lcom/shabakaty/downloader/ey0;->e:Lcom/shabakaty/downloader/qd4;

    .line 18
    iget-object v2, v2, Lcom/shabakaty/downloader/qd4;->d:Ljava/util/HashMap;

    .line 19
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    const-string v3, "storageUtils.composersMap.values"

    invoke-static {v2, v3}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/a90;

    .line 21
    iget-object v11, v3, Lcom/shabakaty/downloader/a90;->b:Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 22
    iget-object v15, v3, Lcom/shabakaty/downloader/a90;->e:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x2e

    move-object v10, v1

    .line 23
    invoke-static/range {v10 .. v17}, Lcom/shabakaty/downloader/ey0;->n(Lcom/shabakaty/downloader/ey0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)Lcom/shabakaty/downloader/a90;

    move-result-object v3

    invoke-virtual {v1, v3, v8}, Lcom/shabakaty/downloader/ey0;->q(Lcom/shabakaty/downloader/a90;Z)V

    goto :goto_7

    :cond_d
    const-string v1, "manager"

    .line 24
    invoke-static {v1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v9

    .line 25
    :cond_e
    sget-object v1, Lcom/shabakaty/downloader/qv4;->a:Lcom/shabakaty/downloader/qv4;

    return-object v1
.end method
