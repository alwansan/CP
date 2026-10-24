.class public final Lcom/shabakaty/downloader/x74$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SingleObserveOn.java"

# interfaces
.implements Lcom/shabakaty/downloader/y74;
.implements Lcom/shabakaty/downloader/mu0;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/x74;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcom/shabakaty/downloader/mu0;",
        ">;",
        "Lcom/shabakaty/downloader/y74<",
        "TT;>;",
        "Lcom/shabakaty/downloader/mu0;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/y74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/y74<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final s:Lcom/shabakaty/downloader/wx3;

.field public t:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public u:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/y74;Lcom/shabakaty/downloader/wx3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/y74<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/wx3;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/x74$a;->r:Lcom/shabakaty/downloader/y74;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/x74$a;->s:Lcom/shabakaty/downloader/wx3;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/x74$a;->u:Ljava/lang/Throwable;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/x74$a;->s:Lcom/shabakaty/downloader/wx3;

    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/wx3;->b(Ljava/lang/Runnable;)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/pu0;->u(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/mu0;)Z

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/mu0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/pu0;->E(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/mu0;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/x74$a;->r:Lcom/shabakaty/downloader/y74;

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/y74;->c(Lcom/shabakaty/downloader/mu0;)V

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

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/x74$a;->t:Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/x74$a;->s:Lcom/shabakaty/downloader/wx3;

    invoke-virtual {p1, p0}, Lcom/shabakaty/downloader/wx3;->b(Ljava/lang/Runnable;)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/pu0;->u(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/mu0;)Z

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/x74$a;->u:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/x74$a;->r:Lcom/shabakaty/downloader/y74;

    invoke-interface {v1, v0}, Lcom/shabakaty/downloader/y74;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/x74$a;->r:Lcom/shabakaty/downloader/y74;

    iget-object v1, p0, Lcom/shabakaty/downloader/x74$a;->t:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/y74;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
