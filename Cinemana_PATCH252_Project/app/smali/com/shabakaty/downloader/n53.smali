.class public final Lcom/shabakaty/downloader/n53;
.super Lcom/shabakaty/downloader/p0;
.source "ObservableThrottleLatest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/n53$a;
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
.field public final s:J

.field public final t:Ljava/util/concurrent/TimeUnit;

.field public final u:Lcom/shabakaty/downloader/wx3;

.field public final v:Z


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/t43;JLjava/util/concurrent/TimeUnit;Lcom/shabakaty/downloader/wx3;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/t43<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lcom/shabakaty/downloader/wx3;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/p0;-><init>(Lcom/shabakaty/downloader/l53;)V

    .line 2
    iput-wide p2, p0, Lcom/shabakaty/downloader/n53;->s:J

    .line 3
    iput-object p4, p0, Lcom/shabakaty/downloader/n53;->t:Ljava/util/concurrent/TimeUnit;

    .line 4
    iput-object p5, p0, Lcom/shabakaty/downloader/n53;->u:Lcom/shabakaty/downloader/wx3;

    .line 5
    iput-boolean p6, p0, Lcom/shabakaty/downloader/n53;->v:Z

    return-void
.end method


# virtual methods
.method public j(Lcom/shabakaty/downloader/q53;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/q53<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/p0;->r:Lcom/shabakaty/downloader/l53;

    new-instance v8, Lcom/shabakaty/downloader/n53$a;

    iget-wide v3, p0, Lcom/shabakaty/downloader/n53;->s:J

    iget-object v5, p0, Lcom/shabakaty/downloader/n53;->t:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/shabakaty/downloader/n53;->u:Lcom/shabakaty/downloader/wx3;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/wx3;->a()Lcom/shabakaty/downloader/wx3$c;

    move-result-object v6

    iget-boolean v7, p0, Lcom/shabakaty/downloader/n53;->v:Z

    move-object v1, v8

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/downloader/n53$a;-><init>(Lcom/shabakaty/downloader/q53;JLjava/util/concurrent/TimeUnit;Lcom/shabakaty/downloader/wx3$c;Z)V

    check-cast v0, Lcom/shabakaty/downloader/t43;

    invoke-virtual {v0, v8}, Lcom/shabakaty/downloader/t43;->i(Lcom/shabakaty/downloader/q53;)V

    return-void
.end method
