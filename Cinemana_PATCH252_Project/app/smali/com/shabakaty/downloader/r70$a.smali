.class public final Lcom/shabakaty/downloader/r70$a;
.super Ljava/lang/Object;
.source "CompletableAndThenCompletable.java"

# interfaces
.implements Lcom/shabakaty/downloader/a80;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/r70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final r:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/shabakaty/downloader/mu0;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Lcom/shabakaty/downloader/a80;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/a80;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/shabakaty/downloader/mu0;",
            ">;",
            "Lcom/shabakaty/downloader/a80;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/r70$a;->r:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/r70$a;->s:Lcom/shabakaty/downloader/a80;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/r70$a;->s:Lcom/shabakaty/downloader/a80;

    invoke-interface {v0}, Lcom/shabakaty/downloader/a80;->a()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/r70$a;->s:Lcom/shabakaty/downloader/a80;

    invoke-interface {v0, p1}, Lcom/shabakaty/downloader/a80;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/mu0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/r70$a;->r:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pu0;->u(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/mu0;)Z

    return-void
.end method
