.class public abstract Lcom/shabakaty/downloader/r1;
.super Lcom/shabakaty/downloader/v55;
.source "AbstractWebSocket.java"


# instance fields
.field private connectionLostTimeout:I

.field private connectionLostTimer:Ljava/util/Timer;

.field private connectionLostTimerTask:Ljava/util/TimerTask;

.field private reuseAddr:Z

.field private tcpNoDelay:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/v55;-><init>()V

    const/16 v0, 0x3c

    .line 2
    iput v0, p0, Lcom/shabakaty/downloader/r1;->connectionLostTimeout:I

    return-void
.end method

.method public static synthetic access$000(Lcom/shabakaty/downloader/r1;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/shabakaty/downloader/r1;->connectionLostTimeout:I

    return p0
.end method

.method private cancelConnectionLostTimer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/r1;->connectionLostTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3
    iput-object v1, p0, Lcom/shabakaty/downloader/r1;->connectionLostTimer:Ljava/util/Timer;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/r1;->connectionLostTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 6
    iput-object v1, p0, Lcom/shabakaty/downloader/r1;->connectionLostTimerTask:Ljava/util/TimerTask;

    :cond_1
    return-void
.end method

.method private restartConnectionLostTimer()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/r1;->cancelConnectionLostTimer()V

    .line 2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/r1;->connectionLostTimer:Ljava/util/Timer;

    .line 3
    new-instance v2, Lcom/shabakaty/downloader/r1$a;

    invoke-direct {v2, p0}, Lcom/shabakaty/downloader/r1$a;-><init>(Lcom/shabakaty/downloader/r1;)V

    iput-object v2, p0, Lcom/shabakaty/downloader/r1;->connectionLostTimerTask:Ljava/util/TimerTask;

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/r1;->connectionLostTimer:Ljava/util/Timer;

    iget v0, p0, Lcom/shabakaty/downloader/r1;->connectionLostTimeout:I

    mul-int/lit16 v3, v0, 0x3e8

    int-to-long v3, v3

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v5, v0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    return-void
.end method


# virtual methods
.method public abstract connections()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/shabakaty/downloader/u55;",
            ">;"
        }
    .end annotation
.end method

.method public getConnectionLostTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/r1;->connectionLostTimeout:I

    return v0
.end method

.method public isReuseAddr()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/r1;->reuseAddr:Z

    return v0
.end method

.method public isTcpNoDelay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/r1;->tcpNoDelay:Z

    return v0
.end method

.method public setConnectionLostTimeout(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/shabakaty/downloader/r1;->connectionLostTimeout:I

    if-gtz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/r1;->stopConnectionLostTimer()V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/shabakaty/downloader/r1;->connectionLostTimer:Ljava/util/Timer;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/shabakaty/downloader/r1;->connectionLostTimerTask:Ljava/util/TimerTask;

    if-eqz p1, :cond_2

    .line 4
    :cond_1
    sget-object p1, Lcom/shabakaty/downloader/x55;->F:Ljava/lang/Object;

    .line 5
    invoke-direct {p0}, Lcom/shabakaty/downloader/r1;->restartConnectionLostTimer()V

    :cond_2
    return-void
.end method

.method public setReuseAddr(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/shabakaty/downloader/r1;->reuseAddr:Z

    return-void
.end method

.method public setTcpNoDelay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/shabakaty/downloader/r1;->tcpNoDelay:Z

    return-void
.end method

.method public startConnectionLostTimer()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/shabakaty/downloader/r1;->connectionLostTimeout:I

    if-gtz v0, :cond_0

    .line 2
    sget-object v0, Lcom/shabakaty/downloader/x55;->F:Ljava/lang/Object;

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/x55;->F:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Lcom/shabakaty/downloader/r1;->restartConnectionLostTimer()V

    return-void
.end method

.method public stopConnectionLostTimer()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/r1;->connectionLostTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/shabakaty/downloader/r1;->connectionLostTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 2
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/x55;->F:Ljava/lang/Object;

    .line 3
    invoke-direct {p0}, Lcom/shabakaty/downloader/r1;->cancelConnectionLostTimer()V

    :cond_1
    return-void
.end method
