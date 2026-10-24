.class public final Lcom/shabakaty/downloader/in5;
.super Lcom/shabakaty/downloader/qi5;


# instance fields
.field public A:J

.field public final B:Lcom/shabakaty/downloader/gr5;

.field public final C:Lcom/shabakaty/downloader/gr5;

.field public final D:Lcom/shabakaty/downloader/ly5;

.field public E:J

.field public F:Z

.field public v:Z

.field public final w:Lcom/shabakaty/downloader/ll5;

.field public final x:Lcom/shabakaty/downloader/iw5;

.field public final y:Lcom/shabakaty/downloader/cw5;

.field public final z:Lcom/shabakaty/downloader/bk5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fj5;Lcom/shabakaty/downloader/ox5;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/qi5;-><init>(Lcom/shabakaty/downloader/fj5;)V

    const-wide/high16 v0, -0x8000000000000000L

    .line 2
    iput-wide v0, p0, Lcom/shabakaty/downloader/in5;->A:J

    .line 3
    new-instance p2, Lcom/shabakaty/downloader/cw5;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/cw5;-><init>(Lcom/shabakaty/downloader/fj5;)V

    .line 4
    iput-object p2, p0, Lcom/shabakaty/downloader/in5;->y:Lcom/shabakaty/downloader/cw5;

    .line 5
    new-instance p2, Lcom/shabakaty/downloader/ll5;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/ll5;-><init>(Lcom/shabakaty/downloader/fj5;)V

    .line 6
    iput-object p2, p0, Lcom/shabakaty/downloader/in5;->w:Lcom/shabakaty/downloader/ll5;

    .line 7
    new-instance p2, Lcom/shabakaty/downloader/iw5;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/iw5;-><init>(Lcom/shabakaty/downloader/fj5;)V

    .line 8
    iput-object p2, p0, Lcom/shabakaty/downloader/in5;->x:Lcom/shabakaty/downloader/iw5;

    .line 9
    new-instance p2, Lcom/shabakaty/downloader/bk5;

    invoke-direct {p2, p1}, Lcom/shabakaty/downloader/bk5;-><init>(Lcom/shabakaty/downloader/fj5;)V

    .line 10
    iput-object p2, p0, Lcom/shabakaty/downloader/in5;->z:Lcom/shabakaty/downloader/bk5;

    .line 11
    new-instance p2, Lcom/shabakaty/downloader/ly5;

    invoke-virtual {p0}, Lcom/shabakaty/downloader/fq1;->q1()Lcom/shabakaty/downloader/x30;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/shabakaty/downloader/ly5;-><init>(Lcom/shabakaty/downloader/x30;I)V

    iput-object p2, p0, Lcom/shabakaty/downloader/in5;->D:Lcom/shabakaty/downloader/ly5;

    .line 12
    new-instance p2, Lcom/shabakaty/downloader/pn5;

    invoke-direct {p2, p0, p1, v1}, Lcom/shabakaty/downloader/pn5;-><init>(Lcom/shabakaty/downloader/in5;Lcom/shabakaty/downloader/fj5;I)V

    iput-object p2, p0, Lcom/shabakaty/downloader/in5;->B:Lcom/shabakaty/downloader/gr5;

    .line 13
    new-instance p2, Lcom/shabakaty/downloader/pn5;

    const/4 v0, 0x1

    invoke-direct {p2, p0, p1, v0}, Lcom/shabakaty/downloader/pn5;-><init>(Lcom/shabakaty/downloader/in5;Lcom/shabakaty/downloader/fj5;I)V

    iput-object p2, p0, Lcom/shabakaty/downloader/in5;->C:Lcom/shabakaty/downloader/gr5;

    return-void
.end method


# virtual methods
.method public final M1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/in5;->w:Lcom/shabakaty/downloader/ll5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qi5;->L1()V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/in5;->x:Lcom/shabakaty/downloader/iw5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qi5;->L1()V

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/in5;->z:Lcom/shabakaty/downloader/bk5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/qi5;->L1()V

    return-void
.end method

.method public final O1()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/xu6;->b()V

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/xu6;->b()V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/ns5;->a:Lcom/shabakaty/downloader/ox5;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/ox5;->r:Ljava/lang/Object;

    .line 6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Service client disabled. Can\'t dispatch local hits to device AnalyticsService"

    .line 7
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/fq1;->I1(Ljava/lang/String;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/in5;->z:Lcom/shabakaty/downloader/bk5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/bk5;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Service not connected"

    .line 9
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/fq1;->H1(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/in5;->w:Lcom/shabakaty/downloader/ll5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ll5;->P1()Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Dispatching local hits to device AnalyticsService"

    .line 11
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/fq1;->H1(Ljava/lang/String;)V

    .line 12
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/in5;->w:Lcom/shabakaty/downloader/ll5;

    invoke-static {}, Lcom/shabakaty/downloader/sq5;->c()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/ll5;->R1(J)Ljava/util/List;

    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {p0}, Lcom/shabakaty/downloader/in5;->S1()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    .line 15
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/su5;

    .line 17
    iget-object v2, p0, Lcom/shabakaty/downloader/in5;->z:Lcom/shabakaty/downloader/bk5;

    invoke-virtual {v2, v1}, Lcom/shabakaty/downloader/bk5;->P1(Lcom/shabakaty/downloader/su5;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 18
    invoke-virtual {p0}, Lcom/shabakaty/downloader/in5;->S1()V

    return-void

    .line 19
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 20
    :try_start_1
    iget-object v2, p0, Lcom/shabakaty/downloader/in5;->w:Lcom/shabakaty/downloader/ll5;

    .line 21
    iget-wide v3, v1, Lcom/shabakaty/downloader/su5;->c:J

    .line 22
    invoke-virtual {v2, v3, v4}, Lcom/shabakaty/downloader/ll5;->U1(J)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to remove hit that was send for delivery"

    .line 23
    invoke-virtual {p0, v1, v0}, Lcom/shabakaty/downloader/fq1;->G1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p0}, Lcom/shabakaty/downloader/in5;->U1()V

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Failed to read hits from store"

    .line 25
    invoke-virtual {p0, v1, v0}, Lcom/shabakaty/downloader/fq1;->G1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    invoke-virtual {p0}, Lcom/shabakaty/downloader/in5;->U1()V

    :cond_5
    return-void
.end method

.method public final P1(Lcom/shabakaty/downloader/bs5;)V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/in5;->E:J

    .line 2
    invoke-static {}, Lcom/shabakaty/downloader/xu6;->b()V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fq1;->D1()Lcom/shabakaty/downloader/ww5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ww5;->O1()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fq1;->q1()Lcom/shabakaty/downloader/x30;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/mn0;

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 7
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x1

    .line 8
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Dispatching local hits. Elapsed time since last dispatch (ms)"

    invoke-virtual {p0, v3, v2}, Lcom/shabakaty/downloader/fq1;->m1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/in5;->Q1()V

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/in5;->R1()Z

    .line 11
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fq1;->D1()Lcom/shabakaty/downloader/ww5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ww5;->P1()V

    .line 12
    invoke-virtual {p0}, Lcom/shabakaty/downloader/in5;->S1()V

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 13
    invoke-interface {p1, v2}, Lcom/shabakaty/downloader/bs5;->V(Ljava/lang/Throwable;)V

    .line 14
    :cond_1
    iget-wide v3, p0, Lcom/shabakaty/downloader/in5;->E:J

    cmp-long v5, v3, v0

    if-eqz v5, :cond_2

    .line 15
    iget-object v0, p0, Lcom/shabakaty/downloader/in5;->y:Lcom/shabakaty/downloader/cw5;

    .line 16
    iget-object v0, v0, Lcom/shabakaty/downloader/cw5;->a:Lcom/shabakaty/downloader/fj5;

    .line 17
    iget-object v0, v0, Lcom/shabakaty/downloader/fj5;->a:Landroid/content/Context;

    .line 18
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.google.analytics.RADIO_POWERED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    sget-object v3, Lcom/shabakaty/downloader/cw5;->d:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Local dispatch failed"

    .line 22
    invoke-virtual {p0, v1, v0}, Lcom/shabakaty/downloader/fq1;->G1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fq1;->D1()Lcom/shabakaty/downloader/ww5;

    move-result-object v1

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ww5;->P1()V

    .line 24
    invoke-virtual {p0}, Lcom/shabakaty/downloader/in5;->S1()V

    if-eqz p1, :cond_3

    .line 25
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/bs5;->V(Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final Q1()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/shabakaty/downloader/in5;->F:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/ns5;->a:Lcom/shabakaty/downloader/ox5;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/ox5;->r:Ljava/lang/Object;

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/in5;->z:Lcom/shabakaty/downloader/bk5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/bk5;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 6
    :cond_2
    sget-object v0, Lcom/shabakaty/downloader/ns5;->z:Lcom/shabakaty/downloader/ox5;

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/ox5;->r:Ljava/lang/Object;

    .line 8
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 9
    iget-object v2, p0, Lcom/shabakaty/downloader/in5;->D:Lcom/shabakaty/downloader/ly5;

    invoke-virtual {v2, v0, v1}, Lcom/shabakaty/downloader/ly5;->b(J)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 10
    iget-object v0, p0, Lcom/shabakaty/downloader/in5;->D:Lcom/shabakaty/downloader/ly5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ly5;->a()V

    const-string v0, "Connecting to service"

    .line 11
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/fq1;->H1(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/in5;->z:Lcom/shabakaty/downloader/bk5;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/shabakaty/downloader/xu6;->b()V

    .line 14
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 15
    iget-object v1, v0, Lcom/shabakaty/downloader/bk5;->w:Lcom/shabakaty/downloader/yu5;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    goto/16 :goto_2

    .line 16
    :cond_3
    iget-object v1, v0, Lcom/shabakaty/downloader/bk5;->v:Lcom/shabakaty/downloader/ok5;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {}, Lcom/shabakaty/downloader/xu6;->b()V

    .line 18
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.google.android.gms.analytics.service.START"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.google.android.gms"

    const-string v7, "com.google.android.gms.analytics.service.AnalyticsService"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 20
    iget-object v5, v1, Lcom/shabakaty/downloader/ok5;->t:Lcom/shabakaty/downloader/bk5;

    invoke-virtual {v5}, Lcom/shabakaty/downloader/fq1;->U0()Landroid/content/Context;

    move-result-object v5

    const-string v6, "app_package_name"

    .line 21
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    invoke-static {}, Lcom/shabakaty/downloader/kb0;->b()Lcom/shabakaty/downloader/kb0;

    move-result-object v6

    .line 23
    monitor-enter v1

    const/4 v7, 0x0

    .line 24
    :try_start_0
    iput-object v7, v1, Lcom/shabakaty/downloader/ok5;->r:Lcom/shabakaty/downloader/yu5;

    .line 25
    iput-boolean v2, v1, Lcom/shabakaty/downloader/ok5;->s:Z

    .line 26
    iget-object v8, v1, Lcom/shabakaty/downloader/ok5;->t:Lcom/shabakaty/downloader/bk5;

    .line 27
    iget-object v8, v8, Lcom/shabakaty/downloader/bk5;->v:Lcom/shabakaty/downloader/ok5;

    const/16 v9, 0x81

    .line 28
    invoke-virtual {v6, v5, v4, v8, v9}, Lcom/shabakaty/downloader/kb0;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    .line 29
    iget-object v5, v1, Lcom/shabakaty/downloader/ok5;->t:Lcom/shabakaty/downloader/bk5;

    const-string v6, "Bind to service requested"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/shabakaty/downloader/fq1;->k1(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v4, :cond_4

    .line 30
    iput-boolean v3, v1, Lcom/shabakaty/downloader/ok5;->s:Z

    .line 31
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 32
    :cond_4
    :try_start_1
    sget-object v4, Lcom/shabakaty/downloader/ns5;->y:Lcom/shabakaty/downloader/ox5;

    .line 33
    iget-object v4, v4, Lcom/shabakaty/downloader/ox5;->r:Ljava/lang/Object;

    .line 34
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 35
    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 36
    :catch_0
    :try_start_2
    iget-object v4, v1, Lcom/shabakaty/downloader/ok5;->t:Lcom/shabakaty/downloader/bk5;

    const-string v5, "Wait for service connect was interrupted"

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/fq1;->I1(Ljava/lang/String;)V

    .line 37
    :goto_0
    iput-boolean v3, v1, Lcom/shabakaty/downloader/ok5;->s:Z

    .line 38
    iget-object v4, v1, Lcom/shabakaty/downloader/ok5;->r:Lcom/shabakaty/downloader/yu5;

    .line 39
    iput-object v7, v1, Lcom/shabakaty/downloader/ok5;->r:Lcom/shabakaty/downloader/yu5;

    if-nez v4, :cond_5

    .line 40
    iget-object v5, v1, Lcom/shabakaty/downloader/ok5;->t:Lcom/shabakaty/downloader/bk5;

    const-string v6, "Successfully bound to service but never got onServiceConnected callback"

    invoke-virtual {v5, v6}, Lcom/shabakaty/downloader/fq1;->J1(Ljava/lang/String;)V

    .line 41
    :cond_5
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v4

    :goto_1
    if-eqz v7, :cond_6

    .line 42
    iput-object v7, v0, Lcom/shabakaty/downloader/bk5;->w:Lcom/shabakaty/downloader/yu5;

    .line 43
    invoke-virtual {v0}, Lcom/shabakaty/downloader/bk5;->Q1()V

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_7

    const-string v0, "Connected to service"

    .line 44
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/fq1;->H1(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/shabakaty/downloader/in5;->D:Lcom/shabakaty/downloader/ly5;

    const-wide/16 v1, 0x0

    .line 46
    iput-wide v1, v0, Lcom/shabakaty/downloader/ly5;->s:J

    .line 47
    invoke-virtual {p0}, Lcom/shabakaty/downloader/in5;->O1()V

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 48
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_7
    :goto_3
    return-void
.end method

.method public final R1()Z
    .locals 13

    const-string v0, "Failed to commit local dispatch transaction"

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/xu6;->b()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi5;->N1()V

    const-string v1, "Dispatching a batch of local hits"

    .line 3
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/fq1;->H1(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/in5;->z:Lcom/shabakaty/downloader/bk5;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/bk5;->isConnected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/in5;->x:Lcom/shabakaty/downloader/iw5;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/iw5;->U1()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const-string v0, "No network or service available. Will retry later"

    .line 6
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/fq1;->H1(Ljava/lang/String;)V

    return v3

    .line 7
    :cond_0
    invoke-static {}, Lcom/shabakaty/downloader/sq5;->c()I

    move-result v1

    .line 8
    sget-object v2, Lcom/shabakaty/downloader/ns5;->h:Lcom/shabakaty/downloader/ox5;

    .line 9
    iget-object v2, v2, Lcom/shabakaty/downloader/ox5;->r:Ljava/lang/Object;

    .line 10
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 11
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-long v1, v1

    .line 12
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v5, 0x0

    .line 13
    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/shabakaty/downloader/in5;->w:Lcom/shabakaty/downloader/ll5;

    .line 14
    invoke-virtual {v7}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 15
    invoke-virtual {v7}, Lcom/shabakaty/downloader/ll5;->O1()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 16
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :try_start_1
    iget-object v7, p0, Lcom/shabakaty/downloader/in5;->w:Lcom/shabakaty/downloader/ll5;

    invoke-virtual {v7, v1, v2}, Lcom/shabakaty/downloader/ll5;->R1(J)Ljava/util/List;

    move-result-object v7

    .line 18
    move-object v8, v7

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v1, "Store is empty, nothing to dispatch"

    .line 19
    invoke-virtual {p0, v1}, Lcom/shabakaty/downloader/fq1;->H1(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/shabakaty/downloader/in5;->U1()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    :try_start_2
    iget-object v1, p0, Lcom/shabakaty/downloader/in5;->w:Lcom/shabakaty/downloader/ll5;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ll5;->i0()V

    .line 22
    iget-object v1, p0, Lcom/shabakaty/downloader/in5;->w:Lcom/shabakaty/downloader/ll5;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ll5;->F0()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    return v3

    :catch_0
    move-exception v1

    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/fq1;->G1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p0}, Lcom/shabakaty/downloader/in5;->U1()V

    return v3

    :cond_1
    :try_start_3
    const-string v9, "Hits loaded from store. count"

    .line 25
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/shabakaty/downloader/fq1;->k1(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 26
    :try_start_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/shabakaty/downloader/su5;

    .line 27
    iget-wide v10, v10, Lcom/shabakaty/downloader/su5;->c:J

    cmp-long v12, v10, v5

    if-nez v12, :cond_2

    const-string v1, "Database contains successfully uploaded hit"

    .line 28
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 29
    invoke-virtual {p0, v1, v2, v4}, Lcom/shabakaty/downloader/fq1;->F1(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 30
    invoke-virtual {p0}, Lcom/shabakaty/downloader/in5;->U1()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 31
    :try_start_5
    iget-object v1, p0, Lcom/shabakaty/downloader/in5;->w:Lcom/shabakaty/downloader/ll5;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ll5;->i0()V

    .line 32
    iget-object v1, p0, Lcom/shabakaty/downloader/in5;->w:Lcom/shabakaty/downloader/ll5;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ll5;->F0()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1

    return v3

    :catch_1
    move-exception v1

    .line 33
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/fq1;->G1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    invoke-virtual {p0}, Lcom/shabakaty/downloader/in5;->U1()V

    return v3

    .line 35
    :cond_3
    :try_start_6
    iget-object v9, p0, Lcom/shabakaty/downloader/in5;->z:Lcom/shabakaty/downloader/bk5;

    invoke-virtual {v9}, Lcom/shabakaty/downloader/bk5;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "Service connected, sending hits to the service"

    .line 36
    invoke-virtual {p0, v9}, Lcom/shabakaty/downloader/fq1;->H1(Ljava/lang/String;)V

    .line 37
    :goto_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 38
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/shabakaty/downloader/su5;

    .line 39
    iget-object v10, p0, Lcom/shabakaty/downloader/in5;->z:Lcom/shabakaty/downloader/bk5;

    invoke-virtual {v10, v9}, Lcom/shabakaty/downloader/bk5;->P1(Lcom/shabakaty/downloader/su5;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 40
    iget-wide v10, v9, Lcom/shabakaty/downloader/su5;->c:J

    .line 41
    invoke-static {v5, v6, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 42
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v10, "Hit sent do device AnalyticsService for delivery"

    .line 43
    invoke-virtual {p0, v10, v9}, Lcom/shabakaty/downloader/fq1;->m1(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 44
    :try_start_7
    iget-object v10, p0, Lcom/shabakaty/downloader/in5;->w:Lcom/shabakaty/downloader/ll5;

    .line 45
    iget-wide v11, v9, Lcom/shabakaty/downloader/su5;->c:J

    .line 46
    invoke-virtual {v10, v11, v12}, Lcom/shabakaty/downloader/ll5;->U1(J)V

    .line 47
    iget-wide v9, v9, Lcom/shabakaty/downloader/su5;->c:J

    .line 48
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v1

    :try_start_8
    const-string v2, "Failed to remove hit that was send for delivery"

    .line 49
    invoke-virtual {p0, v2, v1}, Lcom/shabakaty/downloader/fq1;->G1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    invoke-virtual {p0}, Lcom/shabakaty/downloader/in5;->U1()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 51
    :try_start_9
    iget-object v1, p0, Lcom/shabakaty/downloader/in5;->w:Lcom/shabakaty/downloader/ll5;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ll5;->i0()V

    .line 52
    iget-object v1, p0, Lcom/shabakaty/downloader/in5;->w:Lcom/shabakaty/downloader/ll5;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ll5;->F0()V
    :try_end_9
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_3

    return v3

    :catch_3
    move-exception v1

    .line 53
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/fq1;->G1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p0}, Lcom/shabakaty/downloader/in5;->U1()V

    return v3

    .line 55
    :cond_4
    :try_start_a
    iget-object v8, p0, Lcom/shabakaty/downloader/in5;->x:Lcom/shabakaty/downloader/iw5;

    invoke-virtual {v8}, Lcom/shabakaty/downloader/iw5;->U1()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 56
    iget-object v8, p0, Lcom/shabakaty/downloader/in5;->x:Lcom/shabakaty/downloader/iw5;

    invoke-virtual {v8, v7}, Lcom/shabakaty/downloader/iw5;->T1(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 57
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 58
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    .line 59
    :cond_5
    :try_start_b
    iget-object v8, p0, Lcom/shabakaty/downloader/in5;->w:Lcom/shabakaty/downloader/ll5;

    invoke-virtual {v8, v7}, Lcom/shabakaty/downloader/ll5;->Q1(Ljava/util/List;)V

    .line 60
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    :catch_4
    move-exception v1

    :try_start_c
    const-string v2, "Failed to remove successfully uploaded hits"

    .line 61
    invoke-virtual {p0, v2, v1}, Lcom/shabakaty/downloader/fq1;->G1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    invoke-virtual {p0}, Lcom/shabakaty/downloader/in5;->U1()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 63
    :try_start_d
    iget-object v1, p0, Lcom/shabakaty/downloader/in5;->w:Lcom/shabakaty/downloader/ll5;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ll5;->i0()V

    .line 64
    iget-object v1, p0, Lcom/shabakaty/downloader/in5;->w:Lcom/shabakaty/downloader/ll5;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ll5;->F0()V
    :try_end_d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_d .. :try_end_d} :catch_5

    return v3

    :catch_5
    move-exception v1

    .line 65
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/fq1;->G1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p0}, Lcom/shabakaty/downloader/in5;->U1()V

    return v3

    .line 67
    :cond_6
    :goto_3
    :try_start_e
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    if-eqz v7, :cond_7

    .line 68
    :try_start_f
    iget-object v1, p0, Lcom/shabakaty/downloader/in5;->w:Lcom/shabakaty/downloader/ll5;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ll5;->i0()V

    .line 69
    iget-object v1, p0, Lcom/shabakaty/downloader/in5;->w:Lcom/shabakaty/downloader/ll5;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ll5;->F0()V
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_f} :catch_6

    return v3

    :catch_6
    move-exception v1

    .line 70
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/fq1;->G1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    invoke-virtual {p0}, Lcom/shabakaty/downloader/in5;->U1()V

    return v3

    .line 72
    :cond_7
    :try_start_10
    iget-object v7, p0, Lcom/shabakaty/downloader/in5;->w:Lcom/shabakaty/downloader/ll5;

    invoke-virtual {v7}, Lcom/shabakaty/downloader/ll5;->i0()V

    .line 73
    iget-object v7, p0, Lcom/shabakaty/downloader/in5;->w:Lcom/shabakaty/downloader/ll5;

    invoke-virtual {v7}, Lcom/shabakaty/downloader/ll5;->F0()V
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v1

    .line 74
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/fq1;->G1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p0}, Lcom/shabakaty/downloader/in5;->U1()V

    return v3

    :catch_8
    move-exception v1

    :try_start_11
    const-string v2, "Failed to read hits from persisted store"

    .line 76
    invoke-virtual {p0, v2, v1}, Lcom/shabakaty/downloader/fq1;->E1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p0}, Lcom/shabakaty/downloader/in5;->U1()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 78
    :try_start_12
    iget-object v1, p0, Lcom/shabakaty/downloader/in5;->w:Lcom/shabakaty/downloader/ll5;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ll5;->i0()V

    .line 79
    iget-object v1, p0, Lcom/shabakaty/downloader/in5;->w:Lcom/shabakaty/downloader/ll5;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/ll5;->F0()V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_9

    return v3

    :catch_9
    move-exception v1

    .line 80
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/fq1;->G1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p0}, Lcom/shabakaty/downloader/in5;->U1()V

    return v3

    :catchall_0
    move-exception v1

    .line 82
    :try_start_13
    iget-object v2, p0, Lcom/shabakaty/downloader/in5;->w:Lcom/shabakaty/downloader/ll5;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ll5;->i0()V

    .line 83
    iget-object v2, p0, Lcom/shabakaty/downloader/in5;->w:Lcom/shabakaty/downloader/ll5;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/ll5;->F0()V
    :try_end_13
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_13 .. :try_end_13} :catch_a

    .line 84
    throw v1

    :catch_a
    move-exception v1

    .line 85
    invoke-virtual {p0, v0, v1}, Lcom/shabakaty/downloader/fq1;->G1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    invoke-virtual {p0}, Lcom/shabakaty/downloader/in5;->U1()V

    return v3
.end method

.method public final S1()V
    .locals 11

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/xu6;->b()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 3
    iget-boolean v0, p0, Lcom/shabakaty/downloader/in5;->F:Z

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/in5;->V1()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/in5;->y:Lcom/shabakaty/downloader/cw5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cw5;->a()V

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/in5;->U1()V

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/shabakaty/downloader/in5;->w:Lcom/shabakaty/downloader/ll5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/ll5;->P1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/in5;->y:Lcom/shabakaty/downloader/cw5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/cw5;->a()V

    .line 9
    invoke-virtual {p0}, Lcom/shabakaty/downloader/in5;->U1()V

    return-void

    .line 10
    :cond_2
    sget-object v0, Lcom/shabakaty/downloader/ns5;->w:Lcom/shabakaty/downloader/ox5;

    .line 11
    iget-object v0, v0, Lcom/shabakaty/downloader/ox5;->r:Ljava/lang/Object;

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 13
    iget-object v0, p0, Lcom/shabakaty/downloader/in5;->y:Lcom/shabakaty/downloader/cw5;

    .line 14
    iget-object v4, v0, Lcom/shabakaty/downloader/cw5;->a:Lcom/shabakaty/downloader/fj5;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/fj5;->c()Lcom/shabakaty/downloader/wv5;

    .line 15
    iget-object v4, v0, Lcom/shabakaty/downloader/cw5;->a:Lcom/shabakaty/downloader/fj5;

    invoke-virtual {v4}, Lcom/shabakaty/downloader/fj5;->e()Lcom/shabakaty/downloader/tf5;

    .line 16
    iget-boolean v4, v0, Lcom/shabakaty/downloader/cw5;->b:Z

    if-eqz v4, :cond_3

    goto :goto_1

    .line 17
    :cond_3
    iget-object v4, v0, Lcom/shabakaty/downloader/cw5;->a:Lcom/shabakaty/downloader/fj5;

    .line 18
    iget-object v4, v4, Lcom/shabakaty/downloader/fj5;->a:Landroid/content/Context;

    .line 19
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 21
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "com.google.analytics.RADIO_POWERED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 24
    invoke-virtual {v0}, Lcom/shabakaty/downloader/cw5;->b()Z

    move-result v4

    iput-boolean v4, v0, Lcom/shabakaty/downloader/cw5;->c:Z

    .line 25
    iget-object v4, v0, Lcom/shabakaty/downloader/cw5;->a:Lcom/shabakaty/downloader/fj5;

    .line 26
    invoke-virtual {v4}, Lcom/shabakaty/downloader/fj5;->c()Lcom/shabakaty/downloader/wv5;

    move-result-object v4

    iget-boolean v5, v0, Lcom/shabakaty/downloader/cw5;->c:Z

    .line 27
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "Registering connectivity change receiver. Network connected"

    invoke-virtual {v4, v6, v5}, Lcom/shabakaty/downloader/fq1;->k1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    iput-boolean v1, v0, Lcom/shabakaty/downloader/cw5;->b:Z

    .line 29
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/in5;->y:Lcom/shabakaty/downloader/cw5;

    .line 30
    iget-boolean v1, v0, Lcom/shabakaty/downloader/cw5;->b:Z

    if-nez v1, :cond_4

    .line 31
    iget-object v1, v0, Lcom/shabakaty/downloader/cw5;->a:Lcom/shabakaty/downloader/fj5;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fj5;->c()Lcom/shabakaty/downloader/wv5;

    move-result-object v1

    const-string v4, "Connectivity unknown. Receiver not registered"

    invoke-virtual {v1, v4}, Lcom/shabakaty/downloader/fq1;->I1(Ljava/lang/String;)V

    .line 32
    :cond_4
    iget-boolean v1, v0, Lcom/shabakaty/downloader/cw5;->c:Z

    :cond_5
    if-eqz v1, :cond_e

    .line 33
    invoke-virtual {p0}, Lcom/shabakaty/downloader/in5;->T1()V

    .line 34
    invoke-virtual {p0}, Lcom/shabakaty/downloader/in5;->V1()J

    move-result-wide v0

    .line 35
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fq1;->D1()Lcom/shabakaty/downloader/ww5;

    move-result-object v4

    invoke-virtual {v4}, Lcom/shabakaty/downloader/ww5;->O1()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_7

    .line 36
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fq1;->q1()Lcom/shabakaty/downloader/x30;

    move-result-object v6

    check-cast v6, Lcom/shabakaty/downloader/mn0;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    .line 38
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sub-long v4, v0, v4

    cmp-long v6, v4, v2

    if-lez v6, :cond_6

    goto :goto_2

    .line 39
    :cond_6
    sget-object v4, Lcom/shabakaty/downloader/ns5;->d:Lcom/shabakaty/downloader/ox5;

    .line 40
    iget-object v4, v4, Lcom/shabakaty/downloader/ox5;->r:Ljava/lang/Object;

    .line 41
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 42
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_2

    .line 43
    :cond_7
    sget-object v4, Lcom/shabakaty/downloader/ns5;->d:Lcom/shabakaty/downloader/ox5;

    .line 44
    iget-object v4, v4, Lcom/shabakaty/downloader/ox5;->r:Ljava/lang/Object;

    .line 45
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 46
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 47
    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Dispatch scheduled (ms)"

    invoke-virtual {p0, v1, v0}, Lcom/shabakaty/downloader/fq1;->k1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/shabakaty/downloader/in5;->B:Lcom/shabakaty/downloader/gr5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/gr5;->d()Z

    move-result v0

    if-eqz v0, :cond_d

    const-wide/16 v0, 0x1

    .line 49
    iget-object v6, p0, Lcom/shabakaty/downloader/in5;->B:Lcom/shabakaty/downloader/gr5;

    .line 50
    iget-wide v7, v6, Lcom/shabakaty/downloader/gr5;->c:J

    cmp-long v9, v7, v2

    if-nez v9, :cond_8

    move-wide v6, v2

    goto :goto_3

    .line 51
    :cond_8
    iget-object v7, v6, Lcom/shabakaty/downloader/gr5;->a:Lcom/shabakaty/downloader/fj5;

    .line 52
    iget-object v7, v7, Lcom/shabakaty/downloader/fj5;->c:Lcom/shabakaty/downloader/x30;

    .line 53
    check-cast v7, Lcom/shabakaty/downloader/mn0;

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 55
    iget-wide v9, v6, Lcom/shabakaty/downloader/gr5;->c:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    :goto_3
    add-long/2addr v4, v6

    .line 56
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 57
    iget-object v4, p0, Lcom/shabakaty/downloader/in5;->B:Lcom/shabakaty/downloader/gr5;

    .line 58
    invoke-virtual {v4}, Lcom/shabakaty/downloader/gr5;->d()Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_5

    :cond_9
    cmp-long v5, v0, v2

    if-gez v5, :cond_a

    .line 59
    invoke-virtual {v4}, Lcom/shabakaty/downloader/gr5;->a()V

    goto :goto_5

    .line 60
    :cond_a
    iget-object v5, v4, Lcom/shabakaty/downloader/gr5;->a:Lcom/shabakaty/downloader/fj5;

    .line 61
    iget-object v5, v5, Lcom/shabakaty/downloader/fj5;->c:Lcom/shabakaty/downloader/x30;

    .line 62
    check-cast v5, Lcom/shabakaty/downloader/mn0;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 64
    iget-wide v7, v4, Lcom/shabakaty/downloader/gr5;->c:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long/2addr v0, v5

    cmp-long v5, v0, v2

    if-gez v5, :cond_b

    goto :goto_4

    :cond_b
    move-wide v2, v0

    .line 65
    :goto_4
    invoke-virtual {v4}, Lcom/shabakaty/downloader/gr5;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, v4, Lcom/shabakaty/downloader/gr5;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 66
    invoke-virtual {v4}, Lcom/shabakaty/downloader/gr5;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, v4, Lcom/shabakaty/downloader/gr5;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_c

    .line 67
    iget-object v0, v4, Lcom/shabakaty/downloader/gr5;->a:Lcom/shabakaty/downloader/fj5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/fj5;->c()Lcom/shabakaty/downloader/wv5;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Failed to adjust delayed post. time"

    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/fq1;->G1(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_c
    :goto_5
    return-void

    .line 68
    :cond_d
    iget-object v0, p0, Lcom/shabakaty/downloader/in5;->B:Lcom/shabakaty/downloader/gr5;

    invoke-virtual {v0, v4, v5}, Lcom/shabakaty/downloader/gr5;->e(J)V

    return-void

    .line 69
    :cond_e
    invoke-virtual {p0}, Lcom/shabakaty/downloader/in5;->U1()V

    .line 70
    invoke-virtual {p0}, Lcom/shabakaty/downloader/in5;->T1()V

    return-void
.end method

.method public final T1()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/fj5;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/fj5;->h:Lcom/shabakaty/downloader/xr5;

    invoke-static {v1}, Lcom/shabakaty/downloader/fj5;->a(Lcom/shabakaty/downloader/qi5;)V

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/fj5;->h:Lcom/shabakaty/downloader/xr5;

    .line 4
    iget-boolean v1, v0, Lcom/shabakaty/downloader/xr5;->v:Z

    if-nez v1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-boolean v1, v0, Lcom/shabakaty/downloader/xr5;->w:Z

    if-nez v1, :cond_3

    .line 6
    invoke-static {}, Lcom/shabakaty/downloader/xu6;->b()V

    .line 7
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi5;->N1()V

    const-wide/16 v1, 0x0

    .line 8
    :try_start_0
    iget-object v3, p0, Lcom/shabakaty/downloader/in5;->w:Lcom/shabakaty/downloader/ll5;

    invoke-virtual {v3}, Lcom/shabakaty/downloader/ll5;->T1()J

    move-result-wide v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Failed to get min/max hit times from local store"

    .line 9
    invoke-virtual {p0, v4, v3}, Lcom/shabakaty/downloader/fq1;->G1(Ljava/lang/String;Ljava/lang/Object;)V

    move-wide v3, v1

    :goto_0
    cmp-long v5, v3, v1

    if-eqz v5, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fq1;->q1()Lcom/shabakaty/downloader/x30;

    move-result-object v5

    check-cast v5, Lcom/shabakaty/downloader/mn0;

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    .line 12
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 13
    sget-object v5, Lcom/shabakaty/downloader/ns5;->f:Lcom/shabakaty/downloader/ox5;

    .line 14
    iget-object v5, v5, Lcom/shabakaty/downloader/ox5;->r:Ljava/lang/Object;

    .line 15
    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gtz v7, :cond_3

    .line 16
    invoke-static {}, Lcom/shabakaty/downloader/sq5;->b()J

    move-result-wide v3

    .line 17
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Dispatch alarm scheduled (ms)"

    invoke-virtual {p0, v4, v3}, Lcom/shabakaty/downloader/fq1;->k1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 19
    iget-boolean v3, v0, Lcom/shabakaty/downloader/xr5;->v:Z

    const-string v4, "Receiver not registered"

    .line 20
    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/a;->l(ZLjava/lang/Object;)V

    .line 21
    invoke-static {}, Lcom/shabakaty/downloader/sq5;->b()J

    move-result-wide v9

    cmp-long v3, v9, v1

    if-lez v3, :cond_3

    .line 22
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xr5;->O1()V

    .line 23
    invoke-virtual {v0}, Lcom/shabakaty/downloader/fq1;->q1()Lcom/shabakaty/downloader/x30;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/mn0;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long v7, v1, v9

    const/4 v1, 0x1

    .line 25
    iput-boolean v1, v0, Lcom/shabakaty/downloader/xr5;->w:Z

    .line 26
    sget-object v2, Lcom/shabakaty/downloader/ns5;->C:Lcom/shabakaty/downloader/ox5;

    .line 27
    iget-object v2, v2, Lcom/shabakaty/downloader/ox5;->r:Ljava/lang/Object;

    .line 28
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_2

    const-string v2, "Scheduling upload with JobScheduler"

    .line 30
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/fq1;->H1(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v0}, Lcom/shabakaty/downloader/fq1;->U0()Landroid/content/Context;

    move-result-object v2

    .line 32
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.google.android.gms.analytics.AnalyticsJobService"

    invoke-direct {v3, v2, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xr5;->P1()I

    move-result v4

    .line 34
    new-instance v5, Landroid/os/PersistableBundle;

    invoke-direct {v5}, Landroid/os/PersistableBundle;-><init>()V

    const-string v6, "action"

    const-string v7, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    .line 35
    invoke-virtual {v5, v6, v7}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v6, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v6, v4, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 37
    invoke-virtual {v6, v9, v10}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v3

    shl-long v6, v9, v1

    .line 38
    invoke-virtual {v3, v6, v7}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 39
    invoke-virtual {v1, v5}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 40
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 41
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Scheduling job. JobID"

    invoke-virtual {v0, v4, v3}, Lcom/shabakaty/downloader/fq1;->k1(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    sget-object v0, Lcom/shabakaty/downloader/q06;->a:Ljava/lang/reflect/Method;

    const-string v0, "jobscheduler"

    .line 43
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 44
    sget-object v2, Lcom/shabakaty/downloader/q06;->a:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/shabakaty/downloader/q06;->c:Lcom/shabakaty/downloader/c16;

    .line 45
    check-cast v2, Lcom/shabakaty/downloader/w06;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    goto :goto_1

    :cond_2
    const-string v1, "Scheduling upload with AlarmManager"

    .line 47
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/fq1;->H1(Ljava/lang/String;)V

    .line 48
    iget-object v5, v0, Lcom/shabakaty/downloader/xr5;->x:Landroid/app/AlarmManager;

    const/4 v6, 0x2

    .line 49
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xr5;->Q1()Landroid/app/PendingIntent;

    move-result-object v11

    .line 50
    invoke-virtual/range {v5 .. v11}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final U1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/in5;->B:Lcom/shabakaty/downloader/gr5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/gr5;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "All hits dispatched or no network/service. Going to power save mode"

    .line 2
    invoke-virtual {p0, v0}, Lcom/shabakaty/downloader/fq1;->H1(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/in5;->B:Lcom/shabakaty/downloader/gr5;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/gr5;->a()V

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/fq1;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/fj5;

    .line 5
    iget-object v1, v0, Lcom/shabakaty/downloader/fj5;->h:Lcom/shabakaty/downloader/xr5;

    invoke-static {v1}, Lcom/shabakaty/downloader/fj5;->a(Lcom/shabakaty/downloader/qi5;)V

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/fj5;->h:Lcom/shabakaty/downloader/xr5;

    .line 7
    iget-boolean v1, v0, Lcom/shabakaty/downloader/xr5;->w:Z

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/shabakaty/downloader/xr5;->O1()V

    :cond_1
    return-void
.end method

.method public final V1()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/shabakaty/downloader/in5;->A:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    return-wide v0

    .line 2
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/ns5;->c:Lcom/shabakaty/downloader/ox5;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/ox5;->r:Ljava/lang/Object;

    .line 4
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fq1;->B1()Lcom/shabakaty/downloader/k06;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 7
    iget-boolean v2, v2, Lcom/shabakaty/downloader/k06;->x:Z

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fq1;->B1()Lcom/shabakaty/downloader/k06;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 10
    iget v0, v0, Lcom/shabakaty/downloader/k06;->y:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    :cond_1
    return-wide v0
.end method

.method public final W1(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fq1;->U0()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/shabakaty/downloader/z85;->a(Landroid/content/Context;)Lcom/shabakaty/downloader/q93;

    move-result-object v0

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/q93;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
