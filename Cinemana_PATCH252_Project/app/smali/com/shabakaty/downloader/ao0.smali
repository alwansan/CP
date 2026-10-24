.class public Lcom/shabakaty/downloader/ao0;
.super Ljava/lang/Object;
.source "DefaultExecutorSupplier.java"

# interfaces
.implements Lcom/shabakaty/downloader/y61;


# static fields
.field public static final d:I


# instance fields
.field public final a:Lcom/shabakaty/downloader/nw0;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/shabakaty/downloader/ao0;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/xf3;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/xf3;-><init>(I)V

    .line 3
    new-instance v1, Lcom/shabakaty/downloader/nw0;

    sget v2, Lcom/shabakaty/downloader/ao0;->d:I

    invoke-direct {v1, v2, v0}, Lcom/shabakaty/downloader/nw0;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/shabakaty/downloader/ao0;->a:Lcom/shabakaty/downloader/nw0;

    .line 4
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ao0;->b:Ljava/util/concurrent/Executor;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/yl2;

    invoke-direct {v0}, Lcom/shabakaty/downloader/yl2;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/ao0;->c:Ljava/util/concurrent/Executor;

    return-void
.end method
