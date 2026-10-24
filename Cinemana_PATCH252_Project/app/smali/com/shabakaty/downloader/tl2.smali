.class public abstract Lcom/shabakaty/downloader/tl2;
.super Ljava/lang/Object;
.source "com.google.mlkit:common@@17.1.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/hl4;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/tl2;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Lcom/shabakaty/downloader/hl4;

    .line 3
    invoke-direct {v0}, Lcom/shabakaty/downloader/hl4;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/tl2;->a:Lcom/shabakaty/downloader/hl4;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/shabakaty/downloader/tl2;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;Lcom/shabakaty/downloader/rd5;)Lcom/shabakaty/downloader/uk4;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/tl2;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/a;->k(Z)V

    .line 3
    invoke-virtual {p3}, Lcom/shabakaty/downloader/rd5;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance p1, Lcom/shabakaty/downloader/ye7;

    invoke-direct {p1}, Lcom/shabakaty/downloader/ye7;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/shabakaty/downloader/ye7;->r()Z

    goto :goto_1

    .line 6
    :cond_1
    new-instance v3, Lcom/shabakaty/downloader/rd5;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Lcom/shabakaty/downloader/rd5;-><init>(I)V

    .line 7
    new-instance v6, Lcom/shabakaty/downloader/zk4;

    .line 8
    iget-object v0, v3, Lcom/shabakaty/downloader/rd5;->r:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/rd5;

    .line 9
    invoke-direct {v6, v0}, Lcom/shabakaty/downloader/zk4;-><init>(Lcom/shabakaty/downloader/rd5;)V

    new-instance v7, Lcom/shabakaty/downloader/l27;

    .line 10
    invoke-direct {v7, p1, p3, v3, v6}, Lcom/shabakaty/downloader/l27;-><init>(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/rd5;Lcom/shabakaty/downloader/rd5;Lcom/shabakaty/downloader/zk4;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/tl2;->a:Lcom/shabakaty/downloader/hl4;

    new-instance v8, Lcom/shabakaty/downloader/zr6;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p3

    move-object v4, p2

    move-object v5, v6

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/shabakaty/downloader/zr6;-><init>(Lcom/shabakaty/downloader/tl2;Lcom/shabakaty/downloader/rd5;Lcom/shabakaty/downloader/rd5;Ljava/util/concurrent/Callable;Lcom/shabakaty/downloader/zk4;)V

    invoke-virtual {p1, v7, v8}, Lcom/shabakaty/downloader/hl4;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    .line 12
    iget-object p1, v6, Lcom/shabakaty/downloader/zk4;->a:Lcom/shabakaty/downloader/ye7;

    :goto_1
    return-object p1
.end method
