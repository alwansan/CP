.class public final Lcom/shabakaty/downloader/i84;
.super Lcom/shabakaty/downloader/f74;
.source "SingleSubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/i84$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/shabakaty/downloader/f74<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/shabakaty/downloader/h84;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/h84<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/shabakaty/downloader/wx3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/h84;Lcom/shabakaty/downloader/wx3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/h84<",
            "+TT;>;",
            "Lcom/shabakaty/downloader/wx3;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/f74;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/i84;->a:Lcom/shabakaty/downloader/h84;

    .line 3
    iput-object p2, p0, Lcom/shabakaty/downloader/i84;->b:Lcom/shabakaty/downloader/wx3;

    return-void
.end method


# virtual methods
.method public l(Lcom/shabakaty/downloader/y74;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/y74<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/i84$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/i84;->a:Lcom/shabakaty/downloader/h84;

    invoke-direct {v0, p1, v1}, Lcom/shabakaty/downloader/i84$a;-><init>(Lcom/shabakaty/downloader/y74;Lcom/shabakaty/downloader/h84;)V

    .line 2
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/y74;->c(Lcom/shabakaty/downloader/mu0;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/i84;->b:Lcom/shabakaty/downloader/wx3;

    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/wx3;->b(Ljava/lang/Runnable;)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/i84$a;->s:Lcom/shabakaty/downloader/v04;

    .line 5
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pu0;->u(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/mu0;)Z

    return-void
.end method
