.class public final Lcom/shabakaty/downloader/b53;
.super Lcom/shabakaty/downloader/t43;
.source "ObservableInterval.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/b53$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/t43<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/wx3;

.field public final s:J

.field public final t:J

.field public final u:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;Lcom/shabakaty/downloader/wx3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/t43;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/shabakaty/downloader/b53;->s:J

    .line 3
    iput-wide p3, p0, Lcom/shabakaty/downloader/b53;->t:J

    .line 4
    iput-object p5, p0, Lcom/shabakaty/downloader/b53;->u:Ljava/util/concurrent/TimeUnit;

    .line 5
    iput-object p6, p0, Lcom/shabakaty/downloader/b53;->r:Lcom/shabakaty/downloader/wx3;

    return-void
.end method


# virtual methods
.method public j(Lcom/shabakaty/downloader/q53;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q53<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/shabakaty/downloader/b53$a;

    invoke-direct {v7, p1}, Lcom/shabakaty/downloader/b53$a;-><init>(Lcom/shabakaty/downloader/q53;)V

    .line 2
    invoke-interface {p1, v7}, Lcom/shabakaty/downloader/q53;->c(Lcom/shabakaty/downloader/mu0;)V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/b53;->r:Lcom/shabakaty/downloader/wx3;

    .line 4
    instance-of p1, v0, Lcom/shabakaty/downloader/pp4;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/wx3;->a()Lcom/shabakaty/downloader/wx3$c;

    move-result-object v0

    .line 6
    invoke-static {v7, v0}, Lcom/shabakaty/downloader/pu0;->E(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/mu0;)Z

    .line 7
    iget-wide v2, p0, Lcom/shabakaty/downloader/b53;->s:J

    iget-wide v4, p0, Lcom/shabakaty/downloader/b53;->t:J

    iget-object v6, p0, Lcom/shabakaty/downloader/b53;->u:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lcom/shabakaty/downloader/wx3$c;->d(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/mu0;

    goto :goto_0

    .line 8
    :cond_0
    iget-wide v2, p0, Lcom/shabakaty/downloader/b53;->s:J

    iget-wide v4, p0, Lcom/shabakaty/downloader/b53;->t:J

    iget-object v6, p0, Lcom/shabakaty/downloader/b53;->u:Ljava/util/concurrent/TimeUnit;

    move-object v1, v7

    invoke-virtual/range {v0 .. v6}, Lcom/shabakaty/downloader/wx3;->d(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    .line 9
    invoke-static {v7, p1}, Lcom/shabakaty/downloader/pu0;->E(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/mu0;)Z

    :goto_0
    return-void
.end method
