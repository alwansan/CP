.class public Lcom/shabakaty/downloader/qy0;
.super Ljava/lang/Object;
.source "DownloadRequestQueue.java"


# static fields
.field public static c:Lcom/shabakaty/downloader/qy0;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/shabakaty/downloader/my0;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/qy0;->a:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/qy0;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static a()Lcom/shabakaty/downloader/qy0;
    .locals 2

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/qy0;->c:Lcom/shabakaty/downloader/qy0;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/shabakaty/downloader/qy0;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/shabakaty/downloader/qy0;->c:Lcom/shabakaty/downloader/qy0;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/shabakaty/downloader/qy0;

    invoke-direct {v1}, Lcom/shabakaty/downloader/qy0;-><init>()V

    sput-object v1, Lcom/shabakaty/downloader/qy0;->c:Lcom/shabakaty/downloader/qy0;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/shabakaty/downloader/qy0;->c:Lcom/shabakaty/downloader/qy0;

    return-object v0
.end method
