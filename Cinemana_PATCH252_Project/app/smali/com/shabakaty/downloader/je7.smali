.class public final Lcom/shabakaty/downloader/je7;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/s57;

.field public final synthetic s:Ljava/lang/String;

.field public final synthetic t:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/s57;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/je7;->r:Lcom/shabakaty/downloader/s57;

    iput-object p2, p0, Lcom/shabakaty/downloader/je7;->s:Ljava/lang/String;

    iput-object p3, p0, Lcom/shabakaty/downloader/je7;->t:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/je7;->r:Lcom/shabakaty/downloader/s57;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/s57;->a0:Ljava/util/Map;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/shabakaty/downloader/je7;->r:Lcom/shabakaty/downloader/s57;

    .line 5
    iget-object v1, v1, Lcom/shabakaty/downloader/s57;->a0:Ljava/util/Map;

    .line 6
    iget-object v2, p0, Lcom/shabakaty/downloader/je7;->s:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/nw$e;

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/shabakaty/downloader/je7;->r:Lcom/shabakaty/downloader/s57;

    .line 9
    iget-object v0, v0, Lcom/shabakaty/downloader/s57;->Y:Lcom/google/android/gms/cast/CastDevice;

    .line 10
    iget-object v2, p0, Lcom/shabakaty/downloader/je7;->s:Ljava/lang/String;

    iget-object v3, p0, Lcom/shabakaty/downloader/je7;->t:Ljava/lang/String;

    invoke-interface {v1, v0, v2, v3}, Lcom/shabakaty/downloader/nw$e;->onMessageReceived(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_0
    sget-object v0, Lcom/shabakaty/downloader/s57;->u0:Lcom/shabakaty/downloader/pk2;

    const-string v1, "Discarded message for unknown namespace \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 12
    iget-object v4, p0, Lcom/shabakaty/downloader/je7;->s:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/pk2;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    .line 13
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
