.class public final Lcom/shabakaty/downloader/y70$a;
.super Ljava/lang/Object;
.source "CompletableMergeDelayErrorArray.java"

# interfaces
.implements Lcom/shabakaty/downloader/a80;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/y70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/a80;

.field public final s:Lcom/shabakaty/downloader/c90;

.field public final t:Lcom/shabakaty/downloader/fe;

.field public final u:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/a80;Lcom/shabakaty/downloader/c90;Lcom/shabakaty/downloader/fe;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/y70$a;->r:Lcom/shabakaty/downloader/a80;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/y70$a;->s:Lcom/shabakaty/downloader/c90;

    .line 4
    iput-object p3, p0, Lcom/shabakaty/downloader/y70$a;->t:Lcom/shabakaty/downloader/fe;

    .line 5
    iput-object p4, p0, Lcom/shabakaty/downloader/y70$a;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/y70$a;->d()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/y70$a;->t:Lcom/shabakaty/downloader/fe;

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/d61;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/y70$a;->d()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public c(Lcom/shabakaty/downloader/mu0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/y70$a;->s:Lcom/shabakaty/downloader/c90;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/c90;->b(Lcom/shabakaty/downloader/mu0;)Z

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/y70$a;->u:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/y70$a;->t:Lcom/shabakaty/downloader/fe;

    .line 3
    invoke-static {v0}, Lcom/shabakaty/downloader/d61;->b(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/y70$a;->r:Lcom/shabakaty/downloader/a80;

    invoke-interface {v0}, Lcom/shabakaty/downloader/a80;->a()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/shabakaty/downloader/y70$a;->r:Lcom/shabakaty/downloader/a80;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/a80;->b(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
