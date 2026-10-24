.class public abstract Lcom/shabakaty/downloader/ui0;
.super Lcom/shabakaty/downloader/yi0;
.source "DNSResolverTask.java"


# static fields
.field public static t:Ljava/util/logging/Logger;


# instance fields
.field public s:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/shabakaty/downloader/ui0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/shabakaty/downloader/ui0;->t:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/d92;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/yi0;-><init>(Lcom/shabakaty/downloader/d92;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/shabakaty/downloader/ui0;->s:I

    return-void
.end method


# virtual methods
.method public abstract f(Lcom/shabakaty/downloader/pi0;)Lcom/shabakaty/downloader/pi0;
.end method

.method public abstract g(Lcom/shabakaty/downloader/pi0;)Lcom/shabakaty/downloader/pi0;
.end method

.method public abstract h()Ljava/lang/String;
.end method

.method public i(Ljava/util/Timer;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d92;->Z()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d92;->Y()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v3, 0xe1

    const-wide/16 v5, 0xe1

    move-object v1, p1

    move-object v2, p0

    .line 5
    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d92;->Z()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d92;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p0, Lcom/shabakaty/downloader/ui0;->s:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/shabakaty/downloader/ui0;->s:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    .line 6
    sget-object v0, Lcom/shabakaty/downloader/ui0;->t:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    sget-object v0, Lcom/shabakaty/downloader/ui0;->t:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/yi0;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".run() JmDNS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/ui0;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 8
    :cond_1
    new-instance v0, Lcom/shabakaty/downloader/pi0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/shabakaty/downloader/pi0;-><init>(I)V

    .line 9
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ui0;->g(Lcom/shabakaty/downloader/pi0;)Lcom/shabakaty/downloader/pi0;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 11
    invoke-virtual {v1}, Lcom/shabakaty/downloader/d92;->V()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/ui0;->f(Lcom/shabakaty/downloader/pi0;)Lcom/shabakaty/downloader/pi0;

    move-result-object v0

    .line 13
    :cond_2
    invoke-virtual {v0}, Lcom/shabakaty/downloader/oi0;->g()Z

    move-result v1

    if-nez v1, :cond_5

    .line 14
    iget-object v1, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 15
    invoke-virtual {v1, v0}, Lcom/shabakaty/downloader/d92;->v0(Lcom/shabakaty/downloader/pi0;)V

    goto :goto_1

    .line 16
    :cond_3
    invoke-virtual {p0}, Ljava/util/TimerTask;->cancel()Z

    goto :goto_1

    .line 17
    :cond_4
    :goto_0
    invoke-virtual {p0}, Ljava/util/TimerTask;->cancel()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 18
    sget-object v1, Lcom/shabakaty/downloader/ui0;->t:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/shabakaty/downloader/yi0;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".run() exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    iget-object v0, p0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 20
    invoke-virtual {v0}, Lcom/shabakaty/downloader/d92;->o0()V

    :cond_5
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/yi0;->e()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/shabakaty/downloader/ui0;->s:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
