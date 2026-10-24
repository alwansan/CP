.class public final Lcom/shabakaty/downloader/zg1;
.super Lcom/shabakaty/downloader/qf1;
.source "FlowableTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/zg1$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/shabakaty/downloader/qf1<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final s:Lcom/shabakaty/downloader/wx3;

.field public final t:J

.field public final u:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lcom/shabakaty/downloader/wx3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/qf1;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/shabakaty/downloader/zg1;->t:J

    .line 3
    iput-object p3, p0, Lcom/shabakaty/downloader/zg1;->u:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p4, p0, Lcom/shabakaty/downloader/zg1;->s:Lcom/shabakaty/downloader/wx3;

    return-void
.end method


# virtual methods
.method public i(Lcom/shabakaty/downloader/ef4;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/ef4<",
            "-",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/zg1$a;

    invoke-direct {v0, p1}, Lcom/shabakaty/downloader/zg1$a;-><init>(Lcom/shabakaty/downloader/ef4;)V

    .line 2
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/ef4;->d(Lcom/shabakaty/downloader/lf4;)V

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/zg1;->s:Lcom/shabakaty/downloader/wx3;

    iget-wide v1, p0, Lcom/shabakaty/downloader/zg1;->t:J

    iget-object v3, p0, Lcom/shabakaty/downloader/zg1;->u:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/shabakaty/downloader/wx3;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/mu0;

    move-result-object p1

    .line 4
    invoke-static {v0, p1}, Lcom/shabakaty/downloader/pu0;->F(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/mu0;)Z

    return-void
.end method
