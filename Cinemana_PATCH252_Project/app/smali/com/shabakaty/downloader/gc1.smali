.class public Lcom/shabakaty/downloader/gc1;
.super Ljava/lang/Object;
.source "FirebaseCrashlytics.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic r:Z

.field public final synthetic s:Lcom/shabakaty/downloader/zf0;

.field public final synthetic t:Lcom/shabakaty/downloader/t24;


# direct methods
.method public constructor <init>(ZLcom/shabakaty/downloader/zf0;Lcom/shabakaty/downloader/t24;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/shabakaty/downloader/gc1;->r:Z

    iput-object p2, p0, Lcom/shabakaty/downloader/gc1;->s:Lcom/shabakaty/downloader/zf0;

    iput-object p3, p0, Lcom/shabakaty/downloader/gc1;->t:Lcom/shabakaty/downloader/t24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/gc1;->r:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/gc1;->s:Lcom/shabakaty/downloader/zf0;

    iget-object v1, p0, Lcom/shabakaty/downloader/gc1;->t:Lcom/shabakaty/downloader/t24;

    .line 3
    iget-object v2, v0, Lcom/shabakaty/downloader/zf0;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/shabakaty/downloader/yf0;

    invoke-direct {v3, v0, v1}, Lcom/shabakaty/downloader/yf0;-><init>(Lcom/shabakaty/downloader/zf0;Lcom/shabakaty/downloader/x24;)V

    sget-object v0, Lcom/shabakaty/downloader/xy4;->a:Ljava/util/concurrent/ExecutorService;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/zk4;

    invoke-direct {v0}, Lcom/shabakaty/downloader/zk4;-><init>()V

    .line 5
    new-instance v1, Lcom/shabakaty/downloader/wy4;

    invoke-direct {v1, v3, v0}, Lcom/shabakaty/downloader/wy4;-><init>(Ljava/util/concurrent/Callable;Lcom/shabakaty/downloader/zk4;)V

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
