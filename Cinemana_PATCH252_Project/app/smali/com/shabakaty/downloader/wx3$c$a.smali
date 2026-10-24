.class public final Lcom/shabakaty/downloader/wx3$c$a;
.super Ljava/lang/Object;
.source "Scheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/wx3$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final r:Ljava/lang/Runnable;

.field public final s:Lcom/shabakaty/downloader/v04;

.field public final t:J

.field public u:J

.field public v:J

.field public w:J

.field public final synthetic x:Lcom/shabakaty/downloader/wx3$c;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/wx3$c;JLjava/lang/Runnable;JLcom/shabakaty/downloader/v04;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/wx3$c$a;->x:Lcom/shabakaty/downloader/wx3$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Lcom/shabakaty/downloader/wx3$c$a;->r:Ljava/lang/Runnable;

    .line 3
    iput-object p7, p0, Lcom/shabakaty/downloader/wx3$c$a;->s:Lcom/shabakaty/downloader/v04;

    .line 4
    iput-wide p8, p0, Lcom/shabakaty/downloader/wx3$c$a;->t:J

    .line 5
    iput-wide p5, p0, Lcom/shabakaty/downloader/wx3$c$a;->v:J

    .line 6
    iput-wide p2, p0, Lcom/shabakaty/downloader/wx3$c$a;->w:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/wx3$c$a;->r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/wx3$c$a;->s:Lcom/shabakaty/downloader/v04;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/v04;->n()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/wx3$c$a;->x:Lcom/shabakaty/downloader/wx3$c;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/wx3$c;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    .line 4
    sget-wide v4, Lcom/shabakaty/downloader/wx3;->a:J

    add-long v6, v2, v4

    iget-wide v8, p0, Lcom/shabakaty/downloader/wx3$c$a;->v:J

    const-wide/16 v10, 0x1

    cmp-long v0, v6, v8

    if-ltz v0, :cond_1

    iget-wide v6, p0, Lcom/shabakaty/downloader/wx3$c$a;->t:J

    add-long/2addr v8, v6

    add-long/2addr v8, v4

    cmp-long v0, v2, v8

    if-ltz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-wide v4, p0, Lcom/shabakaty/downloader/wx3$c$a;->w:J

    iget-wide v8, p0, Lcom/shabakaty/downloader/wx3$c$a;->u:J

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/shabakaty/downloader/wx3$c$a;->u:J

    mul-long v8, v8, v6

    add-long/2addr v8, v4

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iget-wide v4, p0, Lcom/shabakaty/downloader/wx3$c$a;->t:J

    add-long v8, v2, v4

    .line 7
    iget-wide v6, p0, Lcom/shabakaty/downloader/wx3$c$a;->u:J

    add-long/2addr v6, v10

    iput-wide v6, p0, Lcom/shabakaty/downloader/wx3$c$a;->u:J

    mul-long v4, v4, v6

    sub-long v4, v8, v4

    iput-wide v4, p0, Lcom/shabakaty/downloader/wx3$c$a;->w:J

    .line 8
    :goto_1
    iput-wide v2, p0, Lcom/shabakaty/downloader/wx3$c$a;->v:J

    sub-long/2addr v8, v2

    .line 9
    iget-object v0, p0, Lcom/shabakaty/downloader/wx3$c$a;->s:Lcom/shabakaty/downloader/v04;

    iget-object v2, p0, Lcom/shabakaty/downloader/wx3$c$a;->x:Lcom/shabakaty/downloader/wx3$c;

    invoke-virtual {v2, p0, v8, v9, v1}, Lcom/shabakaty/downloader/wx3$c;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lcom/shabakaty/downloader/mu0;

    move-result-object v1

    .line 10
    invoke-static {v0, v1}, Lcom/shabakaty/downloader/pu0;->u(Ljava/util/concurrent/atomic/AtomicReference;Lcom/shabakaty/downloader/mu0;)Z

    :cond_2
    return-void
.end method
