.class public final Lcom/shabakaty/downloader/o53;
.super Lcom/shabakaty/downloader/t43;
.source "ObservableTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/o53$a;
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

.field public final t:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lcom/shabakaty/downloader/wx3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/t43;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/shabakaty/downloader/o53;->s:J

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/o53;->t:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p4, p0, Lcom/shabakaty/downloader/o53;->r:Lcom/shabakaty/downloader/wx3;

    return-void
.end method


# virtual methods
.method public j(Lcom/shabakaty/downloader/q53;)V
    .locals 4
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
    new-instance v0, Lcom/shabakaty/downloader/o53$a;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/o53$a;-><init>(Lcom/shabakaty/downloader/q53;)V

    .line 2
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/q53;->c(Lcom/shabakaty/downloader/mu0;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/o53;->r:Lcom/shabakaty/downloader/wx3;

    iget-wide v1, p0, Lcom/shabakaty/downloader/o53;->s:J

    iget-object v3, p0, Lcom/shabakaty/downloader/o53;->t:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/shabakaty/downloader/wx3;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    .line 4
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pu0;->F(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/mu0;)Z

    return-void
.end method
