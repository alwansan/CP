.class public final Lcom/shabakaty/downloader/l74$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SingleDelayWithObservable.java"

# interfaces
.implements Lcom/shabakaty/downloader/q53;
.implements Lcom/shabakaty/downloader/mu0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/l74;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lcom/shabakaty/downloader/mu0;",
        ">;",
        "Lcom/shabakaty/downloader/q53<",
        "TU;>;",
        "Lcom/shabakaty/downloader/mu0;"
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

.field public final s:Lcom/shabakaty/downloader/h84;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/h84<",
            "TT;>;"
        }
    .end annotation
.end field

.field public t:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/y74;Lcom/shabakaty/downloader/h84;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/y74<",
            "-TT;>;",
            "Lcom/shabakaty/downloader/h84<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/l74$a;->r:Lcom/shabakaty/downloader/y74;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/l74$a;->s:Lcom/shabakaty/downloader/h84;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/l74$a;->t:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shabakaty/downloader/l74$a;->t:Z

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/l74$a;->s:Lcom/shabakaty/downloader/h84;

    new-instance v1, Lcom/shabakaty/downloader/kt3;

    iget-object v2, p0, Lcom/shabakaty/downloader/l74$a;->r:Lcom/shabakaty/downloader/y74;

    invoke-direct {v1, p0, v2}, Lcom/shabakaty/downloader/kt3;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/y74;)V

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/h84;->a(Lcom/shabakaty/downloader/y74;)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/l74$a;->t:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/shabakaty/downloader/xv3;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/shabakaty/downloader/l74$a;->t:Z

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/l74$a;->r:Lcom/shabakaty/downloader/y74;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/y74;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/mu0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/shabakaty/downloader/pu0;->D(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/mu0;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/l74$a;->r:Lcom/shabakaty/downloader/y74;

    invoke-interface {p1, p0}, Lcom/shabakaty/downloader/y74;->c(Lcom/shabakaty/downloader/mu0;)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/mu0;

    invoke-interface {p1}, Lcom/shabakaty/downloader/mu0;->h()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/l74$a;->a()V

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
