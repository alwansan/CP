.class public final Lcom/shabakaty/downloader/lm;
.super Ljava/lang/Object;
.source "BitmapLoader.kt"


# static fields
.field public static final a:Lcom/shabakaty/downloader/lm;

.field public static final b:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    const-string v1, "newCachedThreadPool()"

    invoke-static {v0, v1}, Lcom/shabakaty/downloader/j32;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/shabakaty/downloader/lm;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
