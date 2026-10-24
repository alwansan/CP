.class public final Lcom/shabakaty/downloader/zi0$a;
.super Ljava/lang/Object;
.source "DNSTaskStarter.java"

# interfaces
.implements Lcom/shabakaty/downloader/zi0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shabakaty/downloader/zi0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shabakaty/downloader/zi0$a$a;
    }
.end annotation


# instance fields
.field public final r:Lcom/shabakaty/downloader/d92;

.field public final s:Ljava/util/Timer;

.field public final t:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/d92;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/zi0$a;->r:Lcom/shabakaty/downloader/d92;

    .line 3
    new-instance v0, Lcom/shabakaty/downloader/zi0$a$a;

    const-string v1, "JmDNS("

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4
    iget-object v3, p1, Lcom/shabakaty/downloader/d92;->H:Ljava/lang/String;

    const-string v4, ").Timer"

    .line 5
    invoke-static {v2, v3, v4}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/shabakaty/downloader/zi0$a$a;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/shabakaty/downloader/zi0$a;->s:Ljava/util/Timer;

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/zi0$a$a;

    invoke-static {v1}, Lcom/shabakaty/downloader/um3;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/d92;->H:Ljava/lang/String;

    const-string v2, ").State.Timer"

    .line 8
    invoke-static {v1, p1, v2}, Lcom/shabakaty/downloader/ni4;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, v3}, Lcom/shabakaty/downloader/zi0$a$a;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/shabakaty/downloader/zi0$a;->t:Ljava/util/Timer;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zi0$a;->s:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zi0$a;->t:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/o14;

    iget-object v1, p0, Lcom/shabakaty/downloader/zi0$a;->r:Lcom/shabakaty/downloader/d92;

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/o14;-><init>(Lcom/shabakaty/downloader/d92;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/zi0$a;->s:Ljava/util/Timer;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ui0;->i(Ljava/util/Timer;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zi0$a;->s:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method

.method public f()V
    .locals 6

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/dv;

    iget-object v0, p0, Lcom/shabakaty/downloader/zi0$a;->r:Lcom/shabakaty/downloader/d92;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/dv;-><init>(Lcom/shabakaty/downloader/d92;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/zi0$a;->t:Ljava/util/Timer;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    .line 2
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public g()V
    .locals 6

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/do3;

    iget-object v0, p0, Lcom/shabakaty/downloader/zi0$a;->r:Lcom/shabakaty/downloader/d92;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/do3;-><init>(Lcom/shabakaty/downloader/d92;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/zi0$a;->s:Ljava/util/Timer;

    .line 2
    iget-object v2, v1, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 3
    invoke-virtual {v2}, Lcom/shabakaty/downloader/d92;->Z()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-object v2, v1, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 5
    invoke-virtual {v2}, Lcom/shabakaty/downloader/d92;->Y()Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x2710

    const-wide/16 v4, 0x2710

    .line 6
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method public j()V
    .locals 11

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/ag3;

    iget-object v0, p0, Lcom/shabakaty/downloader/zi0$a;->r:Lcom/shabakaty/downloader/d92;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/ag3;-><init>(Lcom/shabakaty/downloader/d92;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/zi0$a;->t:Ljava/util/Timer;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    iget-object v4, v1, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 4
    iget-wide v5, v4, Lcom/shabakaty/downloader/d92;->C:J

    sub-long v5, v2, v5

    const-wide/16 v7, 0x1388

    const/4 v9, 0x1

    cmp-long v10, v5, v7

    if-gez v10, :cond_0

    .line 5
    iget v5, v4, Lcom/shabakaty/downloader/d92;->B:I

    add-int/2addr v5, v9

    .line 6
    iput v5, v4, Lcom/shabakaty/downloader/d92;->B:I

    goto :goto_0

    .line 7
    :cond_0
    iput v9, v4, Lcom/shabakaty/downloader/d92;->B:I

    .line 8
    :goto_0
    iput-wide v2, v4, Lcom/shabakaty/downloader/d92;->C:J

    .line 9
    invoke-virtual {v4}, Lcom/shabakaty/downloader/d92;->V()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    iget-object v2, v1, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 11
    iget v2, v2, Lcom/shabakaty/downloader/d92;->B:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 12
    sget-object v2, Lcom/shabakaty/downloader/d92;->K:Ljava/util/Random;

    const/16 v3, 0xfb

    .line 13
    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xfa

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_1

    .line 14
    :cond_1
    iget-object v2, v1, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 15
    invoke-virtual {v2}, Lcom/shabakaty/downloader/d92;->Z()Z

    move-result v2

    if-nez v2, :cond_2

    .line 16
    iget-object v2, v1, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 17
    invoke-virtual {v2}, Lcom/shabakaty/downloader/d92;->Y()Z

    move-result v2

    if-nez v2, :cond_2

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    .line 18
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_2
    :goto_1
    return-void
.end method

.method public k(Lcom/shabakaty/downloader/mi0;I)V
    .locals 7

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/vs3;

    iget-object v1, p0, Lcom/shabakaty/downloader/zi0$a;->r:Lcom/shabakaty/downloader/d92;

    invoke-direct {v0, v1, p1, p2}, Lcom/shabakaty/downloader/vs3;-><init>(Lcom/shabakaty/downloader/d92;Lcom/shabakaty/downloader/mi0;I)V

    iget-object p1, p0, Lcom/shabakaty/downloader/zi0$a;->s:Ljava/util/Timer;

    .line 2
    iget-object p2, v0, Lcom/shabakaty/downloader/vs3;->s:Lcom/shabakaty/downloader/mi0;

    .line 3
    iget-object p2, p2, Lcom/shabakaty/downloader/oi0;->d:Ljava/util/List;

    .line 4
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x1

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/qi0;

    .line 5
    sget-object v2, Lcom/shabakaty/downloader/vs3;->u:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    sget-object v2, Lcom/shabakaty/downloader/vs3;->u:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vs3;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "start() question="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v2, v0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 8
    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/qi0;->u(Lcom/shabakaty/downloader/d92;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 p2, 0x0

    if-eqz v1, :cond_3

    .line 9
    iget-object v1, v0, Lcom/shabakaty/downloader/vs3;->s:Lcom/shabakaty/downloader/mi0;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/oi0;->i()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 10
    :cond_3
    sget-object v1, Lcom/shabakaty/downloader/d92;->K:Ljava/util/Random;

    const/16 v2, 0x60

    .line 11
    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    iget-object v2, v0, Lcom/shabakaty/downloader/vs3;->s:Lcom/shabakaty/downloader/mi0;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/shabakaty/downloader/mi0;->i:J

    sub-long/2addr v3, v5

    long-to-int v2, v3

    sub-int/2addr v1, v2

    :goto_0
    if-gez v1, :cond_4

    goto :goto_1

    :cond_4
    move p2, v1

    .line 13
    :goto_1
    sget-object v1, Lcom/shabakaty/downloader/vs3;->u:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 14
    sget-object v1, Lcom/shabakaty/downloader/vs3;->u:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/shabakaty/downloader/vs3;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "start() Responder chosen delay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 15
    :cond_5
    iget-object v1, v0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 16
    invoke-virtual {v1}, Lcom/shabakaty/downloader/d92;->Z()Z

    move-result v1

    if-nez v1, :cond_6

    .line 17
    iget-object v1, v0, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 18
    invoke-virtual {v1}, Lcom/shabakaty/downloader/d92;->Y()Z

    move-result v1

    if-nez v1, :cond_6

    int-to-long v1, p2

    .line 19
    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_6
    return-void
.end method

.method public o()V
    .locals 6

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/f9;

    iget-object v0, p0, Lcom/shabakaty/downloader/zi0$a;->r:Lcom/shabakaty/downloader/d92;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/f9;-><init>(Lcom/shabakaty/downloader/d92;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/zi0$a;->t:Ljava/util/Timer;

    .line 2
    iget-object v2, v1, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 3
    invoke-virtual {v2}, Lcom/shabakaty/downloader/d92;->Z()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-object v2, v1, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 5
    invoke-virtual {v2}, Lcom/shabakaty/downloader/d92;->Y()Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    .line 6
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/zi0$a;->t:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    return-void
.end method

.method public r()V
    .locals 6

    .line 1
    new-instance v1, Lcom/shabakaty/downloader/rr3;

    iget-object v0, p0, Lcom/shabakaty/downloader/zi0$a;->r:Lcom/shabakaty/downloader/d92;

    invoke-direct {v1, v0}, Lcom/shabakaty/downloader/rr3;-><init>(Lcom/shabakaty/downloader/d92;)V

    iget-object v0, p0, Lcom/shabakaty/downloader/zi0$a;->t:Ljava/util/Timer;

    .line 2
    iget-object v2, v1, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 3
    invoke-virtual {v2}, Lcom/shabakaty/downloader/d92;->Z()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-object v2, v1, Lcom/shabakaty/downloader/yi0;->r:Lcom/shabakaty/downloader/d92;

    .line 5
    invoke-virtual {v2}, Lcom/shabakaty/downloader/d92;->Y()Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/32 v2, 0x1b7740

    const-wide/32 v4, 0x1b7740

    .line 6
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method public t(Lcom/shabakaty/downloader/k14;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/shabakaty/downloader/l14;

    iget-object v1, p0, Lcom/shabakaty/downloader/zi0$a;->r:Lcom/shabakaty/downloader/d92;

    invoke-direct {v0, v1, p1}, Lcom/shabakaty/downloader/l14;-><init>(Lcom/shabakaty/downloader/d92;Lcom/shabakaty/downloader/k14;)V

    iget-object p1, p0, Lcom/shabakaty/downloader/zi0$a;->s:Ljava/util/Timer;

    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/ui0;->i(Ljava/util/Timer;)V

    return-void
.end method
