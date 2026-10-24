.class public final Lcom/shabakaty/downloader/r70$b;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "CompletableAndThenCompletable.java"

# interfaces
.implements Lcom/shabakaty/downloader/a80;
.implements Lcom/shabakaty/downloader/mu0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/r70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcom/shabakaty/downloader/mu0;",
        ">;",
        "Lcom/shabakaty/downloader/a80;",
        "Lcom/shabakaty/downloader/mu0;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/a80;

.field public final s:Lcom/shabakaty/downloader/c80;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/a80;Lcom/shabakaty/downloader/c80;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/r70$b;->r:Lcom/shabakaty/downloader/a80;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/r70$b;->s:Lcom/shabakaty/downloader/c80;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/r70$b;->s:Lcom/shabakaty/downloader/c80;

    new-instance v1, Lcom/shabakaty/downloader/r70$a;

    iget-object v2, p0, Lcom/shabakaty/downloader/r70$b;->r:Lcom/shabakaty/downloader/a80;

    invoke-direct {v1, p0, v2}, Lcom/shabakaty/downloader/r70$a;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/a80;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/c80;->a(Lcom/shabakaty/downloader/a80;)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/r70$b;->r:Lcom/shabakaty/downloader/a80;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/a80;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/mu0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/pu0;->E(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/mu0;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/r70$b;->r:Lcom/shabakaty/downloader/a80;

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/a80;->c(Lcom/shabakaty/downloader/mu0;)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/shabakaty/downloader/pu0;->f(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public n()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mu0;

    invoke-static {v0}, Lcom/shabakaty/downloader/pu0;->j(Lcom/shabakaty/downloader/mu0;)Z

    move-result v0

    return v0
.end method
