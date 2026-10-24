.class public Lcom/onesignal/k0;
.super Lcom/shabakaty/downloader/a23;
.source "OSSyncService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/k0$a;,
        Lcom/onesignal/k0$b;,
        Lcom/onesignal/k0$c;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/Object;

.field public static f:Lcom/onesignal/k0;


# instance fields
.field public d:Ljava/lang/Long;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/onesignal/k0;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shabakaty/downloader/a23;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/onesignal/k0;->d:Ljava/lang/Long;

    return-void
.end method

.method public static h()Lcom/onesignal/k0;
    .locals 2

    .line 1
    sget-object v0, Lcom/onesignal/k0;->f:Lcom/onesignal/k0;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/onesignal/k0;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/onesignal/k0;->f:Lcom/onesignal/k0;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/onesignal/k0;

    invoke-direct {v1}, Lcom/onesignal/k0;-><init>()V

    sput-object v1, Lcom/onesignal/k0;->f:Lcom/onesignal/k0;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/onesignal/k0;->f:Lcom/onesignal/k0;

    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Lcom/onesignal/SyncJobService;

    return-object v0
.end method

.method public d()I
    .locals 1

    const v0, 0x7b7e1b66

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "OS_SYNCSRV_BG_SYNC"

    return-object v0
.end method

.method public i(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x7

    const-string v1, "OSSyncService scheduleSyncTask:SYNC_AFTER_BG_DELAY_MS: 30000"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x7530

    .line 2
    invoke-virtual {p0, p1, v0, v1}, Lcom/onesignal/k0;->j(Landroid/content/Context;J)V

    return-void
.end method

.method public j(Landroid/content/Context;J)V
    .locals 6

    .line 1
    sget-object v0, Lcom/shabakaty/downloader/a23;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/k0;->d:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 3
    sget-object v1, Lcom/onesignal/q0;->y:Lcom/shabakaty/downloader/c21;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    .line 6
    iget-object v3, p0, Lcom/onesignal/k0;->d:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const/4 p1, 0x7

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "OSSyncService scheduleSyncTask already update scheduled nextScheduledSyncTimeMs: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/onesignal/k0;->d:Ljava/lang/Long;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    .line 8
    invoke-static {p1, p2, p3}, Lcom/onesignal/q0;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    monitor-exit v0

    return-void

    :cond_0
    const-wide/16 v1, 0x1388

    cmp-long v3, p2, v1

    if-gez v3, :cond_1

    move-wide p2, v1

    .line 10
    :cond_1
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/shabakaty/downloader/a23;->f(Landroid/content/Context;J)V

    .line 12
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    sget-object p1, Lcom/onesignal/q0;->y:Lcom/shabakaty/downloader/c21;

    .line 14
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/onesignal/k0;->d:Ljava/lang/Long;

    .line 17
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 18
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method
