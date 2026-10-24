.class public final Lcom/shabakaty/downloader/k74$a;
.super Ljava/lang/Object;
.source "SingleDelay.java"

# interfaces
.implements Lcom/shabakaty/downloader/y74;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/k74;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/k74$a$a;,
        Lcom/shabakaty/downloader/k74$a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/y74<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/v04;

.field public final s:Lcom/shabakaty/downloader/y74;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/y74<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final synthetic t:Lcom/shabakaty/downloader/k74;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/k74;Lcom/shabakaty/downloader/v04;Lcom/shabakaty/downloader/y74;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/v04;",
            "Lcom/shabakaty/downloader/y74<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/k74$a;->t:Lcom/shabakaty/downloader/k74;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/shabakaty/downloader/k74$a;->r:Lcom/shabakaty/downloader/v04;

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/k74$a;->s:Lcom/shabakaty/downloader/y74;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k74$a;->r:Lcom/shabakaty/downloader/v04;

    iget-object v1, p0, Lcom/shabakaty/downloader/k74$a;->t:Lcom/shabakaty/downloader/k74;

    iget-object v2, v1, Lcom/shabakaty/downloader/k74;->d:Lcom/shabakaty/downloader/wx3;

    new-instance v3, Lcom/shabakaty/downloader/k74$a$a;

    invoke-direct {v3, p0, p1}, Lcom/shabakaty/downloader/k74$a$a;-><init>(Lcom/shabakaty/downloader/k74$a;Ljava/lang/Throwable;)V

    iget-boolean p1, v1, Lcom/shabakaty/downloader/k74;->e:Z

    if-eqz p1, :cond_0

    iget-wide v4, v1, Lcom/shabakaty/downloader/k74;->b:J

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    iget-object p1, v1, Lcom/shabakaty/downloader/k74;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, p1}, Lcom/shabakaty/downloader/wx3;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pu0;->u(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/mu0;)Z

    return-void
.end method

.method public c(Lcom/shabakaty/downloader/mu0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k74$a;->r:Lcom/shabakaty/downloader/v04;

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pu0;->u(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/mu0;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/k74$a;->r:Lcom/shabakaty/downloader/v04;

    iget-object v1, p0, Lcom/shabakaty/downloader/k74$a;->t:Lcom/shabakaty/downloader/k74;

    iget-object v2, v1, Lcom/shabakaty/downloader/k74;->d:Lcom/shabakaty/downloader/wx3;

    new-instance v3, Lcom/shabakaty/downloader/k74$a$b;

    invoke-direct {v3, p0, p1}, Lcom/shabakaty/downloader/k74$a$b;-><init>(Lcom/shabakaty/downloader/k74$a;Ljava/lang/Object;)V

    iget-wide v4, v1, Lcom/shabakaty/downloader/k74;->b:J

    iget-object p1, v1, Lcom/shabakaty/downloader/k74;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, p1}, Lcom/shabakaty/downloader/wx3;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    .line 2
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pu0;->u(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/mu0;)Z

    return-void
.end method
