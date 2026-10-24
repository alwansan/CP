.class public abstract Lcom/shabakaty/downloader/s61;
.super Lcom/shabakaty/downloader/pe0;
.source "Executors.kt"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/pe0;->r:Lcom/shabakaty/downloader/pe0$a;

    .line 2
    sget-object v1, Lcom/shabakaty/downloader/r61;->r:Lcom/shabakaty/downloader/r61;

    const-string v2, "baseKey"

    .line 3
    invoke-static {v0, v2}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "safeCast"

    invoke-static {v1, v0}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/pe0;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract M()Ljava/util/concurrent/Executor;
.end method
