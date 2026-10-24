.class public final Lcom/shabakaty/downloader/workers/RenewPathsWorker;
.super Landroidx/work/CoroutineWorker;
.source "RenewPathsWorker.kt"


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
        "Lcom/shabakaty/downloader/workers/RenewPathsWorker;",
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
.field public y:Lcom/shabakaty/downloader/uz0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/CoroutineWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public g(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
    .locals 5
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

    instance-of v0, p1, Lcom/shabakaty/downloader/workers/RenewPathsWorker$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/shabakaty/downloader/workers/RenewPathsWorker$a;

    iget v1, v0, Lcom/shabakaty/downloader/workers/RenewPathsWorker$a;->w:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/shabakaty/downloader/workers/RenewPathsWorker$a;->w:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/shabakaty/downloader/workers/RenewPathsWorker$a;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/workers/RenewPathsWorker$a;-><init>(Lcom/shabakaty/downloader/workers/RenewPathsWorker;Lcom/shabakaty/downloader/ud0;)V

    :goto_0
    iget-object p1, v0, Lcom/shabakaty/downloader/workers/RenewPathsWorker$a;->u:Ljava/lang/Object;

    sget-object v1, Lcom/shabakaty/downloader/te0;->r:Lcom/shabakaty/downloader/te0;

    .line 1
    iget v2, v0, Lcom/shabakaty/downloader/workers/RenewPathsWorker$a;->w:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lcom/shabakaty/downloader/j96;->i(Ljava/lang/Object;)V

    goto :goto_2

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

    const-string v2, "starting renew paths worker"

    invoke-virtual {p1, v2, p0}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/xk0;->a:Lcom/shabakaty/downloader/uy0;

    if-nez p1, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    check-cast p1, Lcom/shabakaty/downloader/wk0;

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/wk0;->f:Lcom/shabakaty/downloader/oj3;

    invoke-interface {p1}, Lcom/shabakaty/downloader/oj3;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/uz0;

    .line 8
    iput-object p1, p0, Lcom/shabakaty/downloader/workers/RenewPathsWorker;->y:Lcom/shabakaty/downloader/uz0;

    .line 9
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/workers/RenewPathsWorker;->y:Lcom/shabakaty/downloader/uz0;

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    .line 10
    iput v3, v0, Lcom/shabakaty/downloader/workers/RenewPathsWorker$a;->w:I

    .line 11
    invoke-static {}, Lcom/shabakaty/downloader/mw0;->a()Lcom/shabakaty/downloader/lw0;

    move-result-object v3

    const-string v4, "renewing downloads paths"

    invoke-virtual {v3, v4, p1}, Lcom/shabakaty/downloader/lw0;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/shabakaty/downloader/lw0$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/shabakaty/downloader/lw0$a;->b()V

    .line 12
    sget-object v3, Lcom/shabakaty/downloader/hu0;->b:Lcom/shabakaty/downloader/pe0;

    .line 13
    new-instance v4, Lcom/shabakaty/downloader/yz0;

    invoke-direct {v4, p1, v2}, Lcom/shabakaty/downloader/yz0;-><init>(Lcom/shabakaty/downloader/uz0;Lcom/shabakaty/downloader/ud0;)V

    invoke-static {v3, v4, v0}, Lcom/shabakaty/downloader/nh3;->M(Lcom/shabakaty/downloader/me0;Lcom/shabakaty/downloader/hn1;Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 14
    :cond_4
    :goto_2
    new-instance p1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {p1}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    return-object p1

    :cond_5
    const-string p1, "downloadsRepo"

    .line 15
    invoke-static {p1}, Lcom/shabakaty/downloader/j32;->l(Ljava/lang/String;)V

    throw v2
.end method
