.class public final Lcom/shabakaty/downloader/m53;
.super Lcom/shabakaty/downloader/p0;
.source "ObservableSubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/m53$b;,
        Lcom/shabakaty/downloader/m53$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/p0<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final s:Lcom/shabakaty/downloader/wx3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/l53;Lcom/shabakaty/downloader/wx3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/l53<",
            "TT;>;",
            "Lcom/shabakaty/downloader/wx3;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/p0;-><init>(Lcom/shabakaty/downloader/l53;)V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/m53;->s:Lcom/shabakaty/downloader/wx3;

    return-void
.end method


# virtual methods
.method public j(Lcom/shabakaty/downloader/q53;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q53<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/m53$a;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/m53$a;-><init>(Lcom/shabakaty/downloader/q53;)V

    .line 2
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/q53;->c(Lcom/shabakaty/downloader/mu0;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/m53;->s:Lcom/shabakaty/downloader/wx3;

    new-instance v1, Lcom/shabakaty/downloader/m53$b;

    invoke-direct {v1, p0, v0}, Lcom/shabakaty/downloader/m53$b;-><init>(Lcom/shabakaty/downloader/m53;Lcom/shabakaty/downloader/m53$a;)V

    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/wx3;->b(Ljava/lang/Runnable;)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    .line 4
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pu0;->E(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/mu0;)Z

    return-void
.end method
