.class public final Lcom/shabakaty/downloader/ww5;
.super Lcom/shabakaty/downloader/qi5;


# instance fields
.field public v:Landroid/content/SharedPreferences;

.field public w:J

.field public x:J

.field public final y:Lcom/shabakaty/downloader/dx5;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/fj5;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Lcom/shabakaty/downloader/qi5;-><init>(Lcom/shabakaty/downloader/fj5;)V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/shabakaty/downloader/ww5;->x:J

    .line 3
    new-instance p1, Lcom/shabakaty/downloader/dx5;

    .line 4
    sget-object v0, Lcom/shabakaty/downloader/ns5;->A:Lcom/shabakaty/downloader/ox5;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/ox5;->r:Ljava/lang/Object;

    .line 6
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string v4, "monitoring"

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p0

    .line 7
    invoke-direct/range {v2 .. v7}, Lcom/shabakaty/downloader/dx5;-><init>(Lcom/shabakaty/downloader/ww5;Ljava/lang/String;JLcom/shabakaty/downloader/ml3;)V

    iput-object p1, p0, Lcom/shabakaty/downloader/ww5;->y:Lcom/shabakaty/downloader/dx5;

    return-void
.end method


# virtual methods
.method public final M1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fq1;->U0()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.gms.analytics.prefs"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/shabakaty/downloader/ww5;->v:Landroid/content/SharedPreferences;

    return-void
.end method

.method public final O1()J
    .locals 5

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/xu6;->b()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 3
    iget-wide v0, p0, Lcom/shabakaty/downloader/ww5;->x:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 4
    iget-object v0, p0, Lcom/shabakaty/downloader/ww5;->v:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    const-string v3, "last_dispatch"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shabakaty/downloader/ww5;->x:J

    .line 5
    :cond_0
    iget-wide v0, p0, Lcom/shabakaty/downloader/ww5;->x:J

    return-wide v0
.end method

.method public final P1()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/shabakaty/downloader/xu6;->b()V

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/qi5;->N1()V

    .line 3
    invoke-virtual {p0}, Lcom/shabakaty/downloader/fq1;->q1()Lcom/shabakaty/downloader/x30;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/mn0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/ww5;->v:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_dispatch"

    .line 6
    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8
    iput-wide v0, p0, Lcom/shabakaty/downloader/ww5;->x:J

    return-void
.end method
