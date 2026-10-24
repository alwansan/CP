.class public final Lcom/shabakaty/downloader/xu6;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/xu6$b;,
        Lcom/shabakaty/downloader/xu6$c;,
        Lcom/shabakaty/downloader/xu6$a;
    }
.end annotation


# static fields
.field public static volatile e:Lcom/shabakaty/downloader/xu6;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/shabakaty/downloader/xu6$a;

.field public volatile c:Lcom/shabakaty/downloader/dc7;

.field public d:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "null reference"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/xu6;->a:Landroid/content/Context;

    .line 5
    new-instance p1, Lcom/shabakaty/downloader/xu6$a;

    invoke-direct {p1, p0}, Lcom/shabakaty/downloader/xu6$a;-><init>(Lcom/shabakaty/downloader/xu6;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/xu6;->b:Lcom/shabakaty/downloader/xu6$a;

    .line 6
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    new-instance p1, Lcom/shabakaty/downloader/p56;

    invoke-direct {p1}, Lcom/shabakaty/downloader/p56;-><init>()V

    return-void
.end method

.method public static b()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Lcom/shabakaty/downloader/xu6$c;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from worker thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/xu6;->b:Lcom/shabakaty/downloader/xu6$a;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
