.class public final Lcom/shabakaty/cinemana/features/DownloadTrace301$Log;
.super Ljava/lang/Object;
.source "DownloadTrace301.java"
.implements Ljava/lang/Runnable;

.field private final app:Landroid/content/Context;
.field private final line:Ljava/lang/String;

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    iput-object p1, p0, Lcom/shabakaty/cinemana/features/DownloadTrace301$Log;->app:Landroid/content/Context;
    iput-object p2, p0, Lcom/shabakaty/cinemana/features/DownloadTrace301$Log;->line:Ljava/lang/String;
    return-void
.end method

.method public run()V
    .locals 2
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/cinemana/features/DownloadTrace301$Log;->app:Landroid/content/Context;
    iget-object v1, p0, Lcom/shabakaty/cinemana/features/DownloadTrace301$Log;->line:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/shabakaty/cinemana/features/DownloadTrace;->log(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :finally
    invoke-static {}, Lcom/shabakaty/cinemana/features/DownloadTrace301;->finished()V
    return-void
    :finally
    move-exception v0
    invoke-static {}, Lcom/shabakaty/cinemana/features/DownloadTrace301;->finished()V
    throw v0
.end method
