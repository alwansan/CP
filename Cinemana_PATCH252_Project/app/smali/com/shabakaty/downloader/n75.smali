.class public Lcom/shabakaty/downloader/n75;
.super Lcom/shabakaty/downloader/vt3$b;
.source "WorkDatabase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/vt3$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/shabakaty/downloader/yh4;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Lcom/shabakaty/downloader/yh4;->A()V

    .line 2
    :try_start_0
    sget v0, Landroidx/work/impl/WorkDatabase;->o:I

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM workspec WHERE state IN (2, 3, 5) AND (period_start_time + minimum_retention_duration) < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Landroidx/work/impl/WorkDatabase;->n:J

    sub-long/2addr v1, v3

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " AND (SELECT COUNT(*)=0 FROM dependency WHERE     prerequisite_id=id AND     work_spec_id NOT IN         (SELECT id FROM workspec WHERE state IN (2, 3, 5)))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-interface {p1, v0}, Lcom/shabakaty/downloader/yh4;->H(Ljava/lang/String;)V

    .line 7
    invoke-interface {p1}, Lcom/shabakaty/downloader/yh4;->i0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-interface {p1}, Lcom/shabakaty/downloader/yh4;->F0()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lcom/shabakaty/downloader/yh4;->F0()V

    .line 9
    throw v0
.end method
