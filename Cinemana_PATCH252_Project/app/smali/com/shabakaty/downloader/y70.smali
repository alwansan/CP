.class public final Lcom/shabakaty/downloader/y70;
.super Lcom/shabakaty/downloader/q70;
.source "CompletableMergeDelayErrorArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/y70$a;
    }
.end annotation


# instance fields
.field public final a:[Lcom/shabakaty/downloader/c80;


# direct methods
.method public constructor <init>([Lcom/shabakaty/downloader/c80;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/q70;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/y70;->a:[Lcom/shabakaty/downloader/c80;

    return-void
.end method


# virtual methods
.method public f(Lcom/shabakaty/downloader/a80;)V
    .locals 8

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/c90;

    invoke-direct {v0}, Lcom/shabakaty/downloader/c90;-><init>()V

    .line 2
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/shabakaty/downloader/y70;->a:[Lcom/shabakaty/downloader/c80;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/fe;

    invoke-direct {v2}, Lcom/shabakaty/downloader/fe;-><init>()V

    .line 4
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/a80;->c(Lcom/shabakaty/downloader/mu0;)V

    .line 5
    iget-object v3, p0, Lcom/shabakaty/downloader/y70;->a:[Lcom/shabakaty/downloader/c80;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 6
    iget-boolean v7, v0, Lcom/shabakaty/downloader/c90;->s:Z

    if-eqz v7, :cond_0

    return-void

    :cond_0
    if-nez v6, :cond_1

    .line 7
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "A completable source is null"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {v2, v6}, Lcom/shabakaty/downloader/d61;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    goto :goto_1

    .line 10
    :cond_1
    new-instance v7, Lcom/shabakaty/downloader/y70$a;

    invoke-direct {v7, p1, v0, v2, v1}, Lcom/shabakaty/downloader/y70$a;-><init>(Lcom/shabakaty/downloader/a80;Lcom/shabakaty/downloader/c90;Lcom/shabakaty/downloader/fe;Ljava/util/concurrent/atomic/AtomicInteger;)V

    invoke-interface {v6, v7}, Lcom/shabakaty/downloader/c80;->a(Lcom/shabakaty/downloader/a80;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_4

    .line 12
    invoke-static {v2}, Lcom/shabakaty/downloader/d61;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_3

    .line 13
    invoke-interface {p1}, Lcom/shabakaty/downloader/a80;->a()V

    goto :goto_2

    .line 14
    :cond_3
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/a80;->b(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method
