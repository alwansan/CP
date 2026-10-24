.class public Lcom/shabakaty/downloader/r1$a;
.super Ljava/util/TimerTask;
.source "AbstractWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shabakaty/downloader/r1;->restartConnectionLostTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/u55;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic s:Lcom/shabakaty/downloader/r1;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/r1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/r1$a;->s:Lcom/shabakaty/downloader/r1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/r1$a;->r:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/r1$a;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/r1$a;->r:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/shabakaty/downloader/r1$a;->s:Lcom/shabakaty/downloader/r1;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/r1;->connections()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/shabakaty/downloader/r1$a;->s:Lcom/shabakaty/downloader/r1;

    invoke-static {v2}, Lcom/shabakaty/downloader/r1;->access$000(Lcom/shabakaty/downloader/r1;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x5dc

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/r1$a;->r:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/u55;

    .line 5
    instance-of v4, v3, Lcom/shabakaty/downloader/x55;

    if-eqz v4, :cond_0

    .line 6
    check-cast v3, Lcom/shabakaty/downloader/x55;

    .line 7
    iget-wide v4, v3, Lcom/shabakaty/downloader/x55;->C:J

    cmp-long v6, v4, v0

    if-gez v6, :cond_1

    .line 8
    sget-object v4, Lcom/shabakaty/downloader/x55;->F:Ljava/lang/Object;

    const/16 v4, 0x3ee

    const/4 v5, 0x0

    const-string v6, ""

    .line 9
    invoke-virtual {v3, v4, v6, v5}, Lcom/shabakaty/downloader/x55;->b(ILjava/lang/String;Z)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v3}, Lcom/shabakaty/downloader/x55;->h()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 11
    iget-object v4, v3, Lcom/shabakaty/downloader/x55;->D:Lcom/shabakaty/downloader/jc3;

    if-nez v4, :cond_2

    .line 12
    new-instance v4, Lcom/shabakaty/downloader/jc3;

    invoke-direct {v4}, Lcom/shabakaty/downloader/jc3;-><init>()V

    iput-object v4, v3, Lcom/shabakaty/downloader/x55;->D:Lcom/shabakaty/downloader/jc3;

    .line 13
    :cond_2
    iget-object v4, v3, Lcom/shabakaty/downloader/x55;->D:Lcom/shabakaty/downloader/jc3;

    invoke-virtual {v3, v4}, Lcom/shabakaty/downloader/x55;->sendFrame(Lcom/shabakaty/downloader/rl1;)V

    goto :goto_0

    .line 14
    :cond_3
    sget-object v3, Lcom/shabakaty/downloader/x55;->F:Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/r1$a;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
