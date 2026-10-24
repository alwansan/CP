.class public final Lcom/shabakaty/downloader/wr6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/z14;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/shabakaty/downloader/z14<",
        "Lcom/shabakaty/downloader/xw;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/shabakaty/downloader/lo6;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/lo6;Lcom/shabakaty/downloader/ic6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/wr6;->a:Lcom/shabakaty/downloader/lo6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/shabakaty/downloader/s14;I)V
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xw;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/wr6;->a:Lcom/shabakaty/downloader/lo6;

    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/lo6;->b(Lcom/shabakaty/downloader/lo6;Lcom/shabakaty/downloader/xw;I)V

    return-void
.end method

.method public final bridge synthetic c(Lcom/shabakaty/downloader/s14;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xw;

    return-void
.end method

.method public final d(Lcom/shabakaty/downloader/s14;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xw;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/wr6;->a:Lcom/shabakaty/downloader/lo6;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/lo6;->f:Lcom/shabakaty/downloader/s27;

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/lo6;->g:Lcom/shabakaty/downloader/pk2;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    iget-object v2, v0, Lcom/shabakaty/downloader/pk2;->a:Ljava/lang/String;

    const-string v3, "Start a session while there\'s already an active session. Create a new one."

    invoke-virtual {v0, v3, v1}, Lcom/shabakaty/downloader/pk2;->e(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wr6;->a:Lcom/shabakaty/downloader/lo6;

    .line 7
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/lo6;->e(Lcom/shabakaty/downloader/xw;)V

    .line 8
    iget-object p1, p0, Lcom/shabakaty/downloader/wr6;->a:Lcom/shabakaty/downloader/lo6;

    .line 9
    iget-object v0, p1, Lcom/shabakaty/downloader/lo6;->b:Lcom/shabakaty/downloader/oz6;

    .line 10
    iget-object p1, p1, Lcom/shabakaty/downloader/lo6;->f:Lcom/shabakaty/downloader/s27;

    .line 11
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/oz6;->a(Lcom/shabakaty/downloader/s27;)Lcom/shabakaty/downloader/wx6;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcom/shabakaty/downloader/wr6;->a:Lcom/shabakaty/downloader/lo6;

    .line 13
    iget-object v0, v0, Lcom/shabakaty/downloader/lo6;->a:Lcom/shabakaty/downloader/u46;

    .line 14
    sget-object v1, Lcom/shabakaty/downloader/ep6;->s:Lcom/shabakaty/downloader/ep6;

    invoke-virtual {v0, p1, v1}, Lcom/shabakaty/downloader/u46;->a(Lcom/shabakaty/downloader/wx6;Lcom/shabakaty/downloader/ep6;)V

    return-void
.end method

.method public final e(Lcom/shabakaty/downloader/s14;Ljava/lang/String;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xw;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/wr6;->a:Lcom/shabakaty/downloader/lo6;

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/lo6;->f(Lcom/shabakaty/downloader/xw;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/wr6;->a:Lcom/shabakaty/downloader/lo6;

    .line 5
    iget-object v0, p1, Lcom/shabakaty/downloader/lo6;->f:Lcom/shabakaty/downloader/s27;

    .line 6
    iput-object p2, v0, Lcom/shabakaty/downloader/s27;->e:Ljava/lang/String;

    .line 7
    iget-object p1, p1, Lcom/shabakaty/downloader/lo6;->b:Lcom/shabakaty/downloader/oz6;

    .line 8
    invoke-virtual {p1, v0}, Lcom/shabakaty/downloader/oz6;->d(Lcom/shabakaty/downloader/s27;)Lcom/shabakaty/downloader/wx6$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/shabakaty/downloader/b37$b;->l()Lcom/shabakaty/downloader/d77;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/b37;

    check-cast p1, Lcom/shabakaty/downloader/wx6;

    .line 9
    iget-object p2, p0, Lcom/shabakaty/downloader/wr6;->a:Lcom/shabakaty/downloader/lo6;

    .line 10
    iget-object p2, p2, Lcom/shabakaty/downloader/lo6;->a:Lcom/shabakaty/downloader/u46;

    .line 11
    sget-object v0, Lcom/shabakaty/downloader/ep6;->t:Lcom/shabakaty/downloader/ep6;

    invoke-virtual {p2, p1, v0}, Lcom/shabakaty/downloader/u46;->a(Lcom/shabakaty/downloader/wx6;Lcom/shabakaty/downloader/ep6;)V

    .line 12
    iget-object p1, p0, Lcom/shabakaty/downloader/wr6;->a:Lcom/shabakaty/downloader/lo6;

    invoke-static {p1}, Lcom/shabakaty/downloader/lo6;->d(Lcom/shabakaty/downloader/lo6;)V

    .line 13
    iget-object p1, p0, Lcom/shabakaty/downloader/wr6;->a:Lcom/shabakaty/downloader/lo6;

    .line 14
    iget-object p2, p1, Lcom/shabakaty/downloader/lo6;->d:Landroid/os/Handler;

    iget-object p1, p1, Lcom/shabakaty/downloader/lo6;->c:Ljava/lang/Runnable;

    const-wide/32 v0, 0x493e0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final g(Lcom/shabakaty/downloader/s14;I)V
    .locals 4

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xw;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/wr6;->a:Lcom/shabakaty/downloader/lo6;

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/lo6;->f(Lcom/shabakaty/downloader/xw;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/wr6;->a:Lcom/shabakaty/downloader/lo6;

    .line 5
    iget-object v0, p1, Lcom/shabakaty/downloader/lo6;->b:Lcom/shabakaty/downloader/oz6;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/lo6;->f:Lcom/shabakaty/downloader/s27;

    .line 7
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/oz6;->d(Lcom/shabakaty/downloader/s27;)Lcom/shabakaty/downloader/wx6$a;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/shabakaty/downloader/wx6$a;->n()Lcom/shabakaty/downloader/sx6;

    move-result-object v1

    invoke-static {v1}, Lcom/shabakaty/downloader/sx6;->n(Lcom/shabakaty/downloader/sx6;)Lcom/shabakaty/downloader/sx6$a;

    move-result-object v1

    .line 9
    iget-object v2, v0, Lcom/shabakaty/downloader/oz6;->c:Ljava/util/Map;

    if-eqz v2, :cond_1

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, v0, Lcom/shabakaty/downloader/oz6;->c:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    :cond_1
    :goto_0
    add-int/lit16 p2, p2, 0x2710

    .line 12
    :goto_1
    invoke-virtual {v1, p2}, Lcom/shabakaty/downloader/sx6$a;->m(I)Lcom/shabakaty/downloader/sx6$a;

    .line 13
    invoke-virtual {p1, v1}, Lcom/shabakaty/downloader/wx6$a;->m(Lcom/shabakaty/downloader/sx6$a;)Lcom/shabakaty/downloader/wx6$a;

    .line 14
    invoke-virtual {p1}, Lcom/shabakaty/downloader/b37$b;->l()Lcom/shabakaty/downloader/d77;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/b37;

    check-cast p1, Lcom/shabakaty/downloader/wx6;

    .line 15
    iget-object p2, p0, Lcom/shabakaty/downloader/wr6;->a:Lcom/shabakaty/downloader/lo6;

    .line 16
    iget-object p2, p2, Lcom/shabakaty/downloader/lo6;->a:Lcom/shabakaty/downloader/u46;

    .line 17
    sget-object v0, Lcom/shabakaty/downloader/ep6;->v:Lcom/shabakaty/downloader/ep6;

    invoke-virtual {p2, p1, v0}, Lcom/shabakaty/downloader/u46;->a(Lcom/shabakaty/downloader/wx6;Lcom/shabakaty/downloader/ep6;)V

    .line 18
    iget-object p1, p0, Lcom/shabakaty/downloader/wr6;->a:Lcom/shabakaty/downloader/lo6;

    invoke-static {p1}, Lcom/shabakaty/downloader/lo6;->d(Lcom/shabakaty/downloader/lo6;)V

    .line 19
    iget-object p1, p0, Lcom/shabakaty/downloader/wr6;->a:Lcom/shabakaty/downloader/lo6;

    .line 20
    iget-object p2, p1, Lcom/shabakaty/downloader/lo6;->d:Landroid/os/Handler;

    iget-object p1, p1, Lcom/shabakaty/downloader/lo6;->c:Ljava/lang/Runnable;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h(Lcom/shabakaty/downloader/s14;Ljava/lang/String;)V
    .locals 8

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xw;

    .line 2
    iget-object p1, p0, Lcom/shabakaty/downloader/wr6;->a:Lcom/shabakaty/downloader/lo6;

    .line 3
    iget-object v0, p1, Lcom/shabakaty/downloader/lo6;->e:Landroid/content/SharedPreferences;

    .line 4
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/lo6;->g(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 5
    sget-object p1, Lcom/shabakaty/downloader/lo6;->g:Lcom/shabakaty/downloader/pk2;

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "Use the existing ApplicationAnalyticsSession if it is available and valid."

    invoke-virtual {p1, v0, p2}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 6
    :cond_0
    sget-object v1, Lcom/shabakaty/downloader/s27;->f:Lcom/shabakaty/downloader/pk2;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance v3, Lcom/shabakaty/downloader/s27;

    invoke-direct {v3}, Lcom/shabakaty/downloader/s27;-><init>()V

    const-string v4, "application_id"

    .line 8
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const-string v5, ""

    .line 9
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/shabakaty/downloader/s27;->a:Ljava/lang/String;

    const-string v4, "receiver_metrics_id"

    .line 10
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    .line 11
    :cond_3
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/shabakaty/downloader/s27;->b:Ljava/lang/String;

    const-string v4, "analytics_session_id"

    .line 12
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_0

    :cond_4
    const-wide/16 v6, 0x0

    .line 13
    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/shabakaty/downloader/s27;->c:J

    const-string v4, "event_sequence_number"

    .line 14
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_0

    .line 15
    :cond_5
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/shabakaty/downloader/s27;->d:I

    const-string v4, "receiver_session_id"

    .line 16
    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_0

    .line 17
    :cond_6
    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/shabakaty/downloader/s27;->e:Ljava/lang/String;

    move-object v1, v3

    .line 18
    :goto_0
    iput-object v1, p1, Lcom/shabakaty/downloader/lo6;->f:Lcom/shabakaty/downloader/s27;

    .line 19
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/lo6;->g(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v3, 0x1

    if-eqz v0, :cond_7

    .line 20
    sget-object p2, Lcom/shabakaty/downloader/lo6;->g:Lcom/shabakaty/downloader/pk2;

    new-array v0, v2, [Ljava/lang/Object;

    const-string v1, "Use the restored ApplicationAnalyticsSession if it is valid."

    invoke-virtual {p2, v1, v0}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    iget-object p1, p1, Lcom/shabakaty/downloader/lo6;->f:Lcom/shabakaty/downloader/s27;

    iget-wide p1, p1, Lcom/shabakaty/downloader/s27;->c:J

    add-long/2addr p1, v3

    sput-wide p1, Lcom/shabakaty/downloader/s27;->g:J

    goto :goto_1

    .line 22
    :cond_7
    sget-object v0, Lcom/shabakaty/downloader/lo6;->g:Lcom/shabakaty/downloader/pk2;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "The restored ApplicationAnalyticsSession is not valid, create a new one."

    invoke-virtual {v0, v2, v1}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    new-instance v0, Lcom/shabakaty/downloader/s27;

    invoke-direct {v0}, Lcom/shabakaty/downloader/s27;-><init>()V

    .line 24
    sget-wide v1, Lcom/shabakaty/downloader/s27;->g:J

    add-long/2addr v1, v3

    sput-wide v1, Lcom/shabakaty/downloader/s27;->g:J

    .line 25
    iput-object v0, p1, Lcom/shabakaty/downloader/lo6;->f:Lcom/shabakaty/downloader/s27;

    .line 26
    invoke-static {}, Lcom/shabakaty/downloader/lo6;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/s27;->a:Ljava/lang/String;

    .line 27
    iget-object p1, p1, Lcom/shabakaty/downloader/lo6;->f:Lcom/shabakaty/downloader/s27;

    iput-object p2, p1, Lcom/shabakaty/downloader/s27;->e:Ljava/lang/String;

    .line 28
    :goto_1
    iget-object p1, p0, Lcom/shabakaty/downloader/wr6;->a:Lcom/shabakaty/downloader/lo6;

    .line 29
    iget-object p2, p1, Lcom/shabakaty/downloader/lo6;->b:Lcom/shabakaty/downloader/oz6;

    .line 30
    iget-object p1, p1, Lcom/shabakaty/downloader/lo6;->f:Lcom/shabakaty/downloader/s27;

    .line 31
    invoke-virtual {p2, p1}, Lcom/shabakaty/downloader/oz6;->d(Lcom/shabakaty/downloader/s27;)Lcom/shabakaty/downloader/wx6$a;

    move-result-object p1

    const/4 p2, 0x1

    .line 32
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/oz6;->c(Lcom/shabakaty/downloader/wx6$a;Z)V

    .line 33
    invoke-virtual {p1}, Lcom/shabakaty/downloader/wx6$a;->n()Lcom/shabakaty/downloader/sx6;

    move-result-object p2

    invoke-static {p2}, Lcom/shabakaty/downloader/sx6;->n(Lcom/shabakaty/downloader/sx6;)Lcom/shabakaty/downloader/sx6$a;

    move-result-object p2

    const/16 v0, 0xa

    .line 34
    invoke-virtual {p2, v0}, Lcom/shabakaty/downloader/sx6$a;->m(I)Lcom/shabakaty/downloader/sx6$a;

    .line 35
    invoke-virtual {p1, p2}, Lcom/shabakaty/downloader/wx6$a;->m(Lcom/shabakaty/downloader/sx6$a;)Lcom/shabakaty/downloader/wx6$a;

    .line 36
    invoke-virtual {p1}, Lcom/shabakaty/downloader/b37$b;->l()Lcom/shabakaty/downloader/d77;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/b37;

    check-cast p1, Lcom/shabakaty/downloader/wx6;

    .line 37
    iget-object p2, p0, Lcom/shabakaty/downloader/wr6;->a:Lcom/shabakaty/downloader/lo6;

    .line 38
    iget-object p2, p2, Lcom/shabakaty/downloader/lo6;->a:Lcom/shabakaty/downloader/u46;

    .line 39
    sget-object v0, Lcom/shabakaty/downloader/ep6;->w:Lcom/shabakaty/downloader/ep6;

    invoke-virtual {p2, p1, v0}, Lcom/shabakaty/downloader/u46;->a(Lcom/shabakaty/downloader/wx6;Lcom/shabakaty/downloader/ep6;)V

    return-void
.end method

.method public final synthetic i(Lcom/shabakaty/downloader/s14;I)V
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xw;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/wr6;->a:Lcom/shabakaty/downloader/lo6;

    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/lo6;->b(Lcom/shabakaty/downloader/lo6;Lcom/shabakaty/downloader/xw;I)V

    return-void
.end method

.method public final synthetic j(Lcom/shabakaty/downloader/s14;I)V
    .locals 1

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xw;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/wr6;->a:Lcom/shabakaty/downloader/lo6;

    invoke-static {v0, p1, p2}, Lcom/shabakaty/downloader/lo6;->b(Lcom/shabakaty/downloader/lo6;Lcom/shabakaty/downloader/xw;I)V

    return-void
.end method

.method public final k(Lcom/shabakaty/downloader/s14;Z)V
    .locals 2

    .line 1
    check-cast p1, Lcom/shabakaty/downloader/xw;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/wr6;->a:Lcom/shabakaty/downloader/lo6;

    .line 3
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/lo6;->f(Lcom/shabakaty/downloader/xw;)V

    .line 4
    iget-object p1, p0, Lcom/shabakaty/downloader/wr6;->a:Lcom/shabakaty/downloader/lo6;

    .line 5
    iget-object v0, p1, Lcom/shabakaty/downloader/lo6;->b:Lcom/shabakaty/downloader/oz6;

    .line 6
    iget-object p1, p1, Lcom/shabakaty/downloader/lo6;->f:Lcom/shabakaty/downloader/s27;

    .line 7
    invoke-virtual {v0, p1}, Lcom/shabakaty/downloader/oz6;->d(Lcom/shabakaty/downloader/s27;)Lcom/shabakaty/downloader/wx6$a;

    move-result-object p1

    .line 8
    invoke-static {p1, p2}, Lcom/shabakaty/downloader/oz6;->c(Lcom/shabakaty/downloader/wx6$a;Z)V

    .line 9
    invoke-virtual {p1}, Lcom/shabakaty/downloader/b37$b;->l()Lcom/shabakaty/downloader/d77;

    move-result-object p1

    check-cast p1, Lcom/shabakaty/downloader/b37;

    check-cast p1, Lcom/shabakaty/downloader/wx6;

    .line 10
    iget-object p2, p0, Lcom/shabakaty/downloader/wr6;->a:Lcom/shabakaty/downloader/lo6;

    .line 11
    iget-object p2, p2, Lcom/shabakaty/downloader/lo6;->a:Lcom/shabakaty/downloader/u46;

    .line 12
    sget-object v0, Lcom/shabakaty/downloader/ep6;->x:Lcom/shabakaty/downloader/ep6;

    invoke-virtual {p2, p1, v0}, Lcom/shabakaty/downloader/u46;->a(Lcom/shabakaty/downloader/wx6;Lcom/shabakaty/downloader/ep6;)V

    .line 13
    iget-object p1, p0, Lcom/shabakaty/downloader/wr6;->a:Lcom/shabakaty/downloader/lo6;

    invoke-static {p1}, Lcom/shabakaty/downloader/lo6;->d(Lcom/shabakaty/downloader/lo6;)V

    .line 14
    iget-object p1, p0, Lcom/shabakaty/downloader/wr6;->a:Lcom/shabakaty/downloader/lo6;

    .line 15
    iget-object p2, p1, Lcom/shabakaty/downloader/lo6;->d:Landroid/os/Handler;

    iget-object p1, p1, Lcom/shabakaty/downloader/lo6;->c:Ljava/lang/Runnable;

    const-wide/32 v0, 0x493e0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
