.class public final Lcom/shabakaty/downloader/bk5;
.super Lcom/shabakaty/downloader/qi5;


# instance fields
.field public final v:Lcom/shabakaty/downloader/ok5;

.field public w:Lcom/shabakaty/downloader/yu5;

.field public final x:Lcom/shabakaty/downloader/gr5;

.field public final y:Lcom/shabakaty/downloader/ly5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fj5;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/qi5;-><init>(Lcom/shabakaty/downloader/fj5;)V

    .line 2
    new-instance v0, Lcom/shabakaty/downloader/ly5;

    .line 3
    iget-object v1, p1, Lcom/shabakaty/downloader/fj5;->c:Lcom/shabakaty/downloader/x30;

    const/4 v2, 0x0

    .line 4
    invoke-direct {v0, v1, v2}, Lcom/shabakaty/downloader/ly5;-><init>(Lcom/shabakaty/downloader/x30;I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/bk5;->y:Lcom/shabakaty/downloader/ly5;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/ok5;

    invoke-direct {v0, p0}, Lcom/shabakaty/downloader/ok5;-><init>(Lcom/shabakaty/downloader/bk5;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/bk5;->v:Lcom/shabakaty/downloader/ok5;

    .line 6
    new-instance v0, Lcom/shabakaty/downloader/pn5;

    invoke-direct {v0, p0, p1}, Lcom/shabakaty/downloader/pn5;-><init>(Lcom/shabakaty/downloader/bk5;Lcom/shabakaty/downloader/fj5;)V

    iput-object v0, p0, Lcom/shabakaty/downloader/bk5;->x:Lcom/shabakaty/downloader/gr5;

    return-void
.end method


# virtual methods
.method public final M1()V
    .locals 0

    return-void
.end method

.method public final O1()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/xu6;->b()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 3
    :try_start_0
    invoke-static {}, Lcom/shabakaty/downloader/kb0;->b()Lcom/shabakaty/downloader/kb0;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fq1;->U0()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/shabakaty/downloader/bk5;->v:Lcom/shabakaty/downloader/ok5;

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/kb0;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/bk5;->w:Lcom/shabakaty/downloader/yu5;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/bk5;->w:Lcom/shabakaty/downloader/yu5;

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fq1;->z1()Lcom/shabakaty/downloader/tf5;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 9
    invoke-static {}, Lcom/shabakaty/downloader/xu6;->b()V

    .line 10
    iget-object v0, v0, Lcom/shabakaty/downloader/tf5;->w:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/in5;

    .line 11
    invoke-static {}, Lcom/shabakaty/downloader/xu6;->b()V

    .line 12
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qi5;->N1()V

    const-string v1, "Service disconnected"

    .line 13
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/fq1;->H1(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final P1(Lcom/shabakaty/downloader/su5;)Z
    .locals 7

    const-string v0, "null reference"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/xu6;->b()V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/bk5;->w:Lcom/shabakaty/downloader/yu5;

    const/4 v0, 0x0

    if-nez v1, :cond_0

    return v0

    .line 5
    :cond_0
    iget-boolean v2, p1, Lcom/shabakaty/downloader/su5;->f:Z

    if-eqz v2, :cond_1

    .line 6
    invoke-static {}, Lcom/shabakaty/downloader/sq5;->d()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {}, Lcom/shabakaty/downloader/sq5;->e()Ljava/lang/String;

    move-result-object v2

    :goto_0
    move-object v5, v2

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    .line 9
    :try_start_0
    iget-object v2, p1, Lcom/shabakaty/downloader/su5;->a:Ljava/util/Map;

    .line 10
    iget-wide v3, p1, Lcom/shabakaty/downloader/su5;->d:J

    .line 11
    invoke-interface/range {v1 .. v6}, Lcom/shabakaty/downloader/yu5;->v1(Ljava/util/Map;JLjava/lang/String;Ljava/util/List;)V

    .line 12
    invoke-virtual {p0}, Lcom/shabakaty/downloader/bk5;->Q1()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    const-string p1, "Failed to send hits to AnalyticsService"

    .line 13
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/fq1;->H1(Ljava/lang/String;)V

    return v0
.end method

.method public final Q1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/bk5;->y:Lcom/shabakaty/downloader/ly5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ly5;->a()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/bk5;->x:Lcom/shabakaty/downloader/gr5;

    .line 3
    sget-object v1, Lcom/shabakaty/downloader/ns5;->x:Lcom/shabakaty/downloader/ox5;

    .line 4
    iget-object v1, v1, Lcom/shabakaty/downloader/ox5;->r:Ljava/lang/Object;

    .line 5
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/gr5;->e(J)V

    return-void
.end method

.method public final isConnected()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/xu6;->b()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/bk5;->w:Lcom/shabakaty/downloader/yu5;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
