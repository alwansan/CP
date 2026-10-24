.class public abstract Landroidx/work/CoroutineWorker;
.super Landroidx/work/ListenableWorker;
.source "CoroutineWorker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008&\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroidx/work/CoroutineWorker;",
        "Landroidx/work/ListenableWorker;",
        "Landroid/content/Context;",
        "appContext",
        "Landroidx/work/WorkerParameters;",
        "params",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "work-runtime-ktx_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final v:Lcom/shabakaty/downloader/x70;

.field public final w:Lcom/shabakaty/downloader/g24;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/g24<",
            "Landroidx/work/ListenableWorker$a;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Lcom/shabakaty/downloader/pe0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 2

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 2
    new-instance p1, Lcom/shabakaty/downloader/h92;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/shabakaty/downloader/h92;-><init>(Lcom/shabakaty/downloader/e92;)V

    .line 3
    iput-object p1, p0, Landroidx/work/CoroutineWorker;->v:Lcom/shabakaty/downloader/x70;

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/g24;

    invoke-direct {p1}, Lcom/shabakaty/downloader/g24;-><init>()V

    .line 5
    iput-object p1, p0, Landroidx/work/CoroutineWorker;->w:Lcom/shabakaty/downloader/g24;

    .line 6
    new-instance p2, Landroidx/work/CoroutineWorker$a;

    invoke-direct {p2, p0}, Landroidx/work/CoroutineWorker$a;-><init>(Landroidx/work/CoroutineWorker;)V

    .line 7
    iget-object v0, p0, Landroidx/work/ListenableWorker;->s:Landroidx/work/WorkerParameters;

    .line 8
    iget-object v0, v0, Landroidx/work/WorkerParameters;->d:Lcom/shabakaty/downloader/bl4;

    const-string v1, "taskExecutor"

    .line 9
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/shabakaty/downloader/s75;

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/s75;->a:Lcom/shabakaty/downloader/x04;

    .line 11
    invoke-virtual {p1, p2, v0}, Lcom/shabakaty/downloader/b0;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 12
    sget-object p1, Lcom/shabakaty/downloader/hu0;->a:Lcom/shabakaty/downloader/pe0;

    .line 13
    iput-object p1, p0, Landroidx/work/CoroutineWorker;->x:Lcom/shabakaty/downloader/pe0;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/CoroutineWorker;->w:Lcom/shabakaty/downloader/g24;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/b0;->cancel(Z)Z

    return-void
.end method

.method public final d()Lcom/shabakaty/downloader/pi2;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/shabakaty/downloader/pi2<",
            "Landroidx/work/ListenableWorker$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/CoroutineWorker;->x:Lcom/shabakaty/downloader/pe0;

    .line 2
    iget-object v1, p0, Landroidx/work/CoroutineWorker;->v:Lcom/shabakaty/downloader/x70;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/v;->plus(Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/me0;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/nh3;->b(Lcom/shabakaty/downloader/me0;)Lcom/shabakaty/downloader/se0;

    move-result-object v1

    .line 3
    new-instance v4, Landroidx/work/CoroutineWorker$b;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Landroidx/work/CoroutineWorker$b;-><init>(Landroidx/work/CoroutineWorker;Lcom/shabakaty/downloader/ud0;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/shabakaty/downloader/nh3;->y(Lcom/shabakaty/downloader/se0;Lcom/shabakaty/downloader/me0;ILcom/shabakaty/downloader/hn1;ILjava/lang/Object;)Lcom/shabakaty/downloader/e92;

    .line 4
    iget-object v0, p0, Landroidx/work/CoroutineWorker;->w:Lcom/shabakaty/downloader/g24;

    return-object v0
.end method

.method public abstract g(Lcom/shabakaty/downloader/ud0;)Ljava/lang/Object;
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
.end method
