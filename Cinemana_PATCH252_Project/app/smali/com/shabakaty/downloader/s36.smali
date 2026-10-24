.class public abstract Lcom/shabakaty/downloader/s36;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-sdk-api@@19.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final r:J

.field public final s:J

.field public final t:Z

.field public final synthetic u:Lcom/shabakaty/downloader/g66;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/g66;Z)V
    .locals 2

    iput-object p1, p0, Lcom/shabakaty/downloader/s36;->u:Lcom/shabakaty/downloader/g66;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    iput-wide v0, p0, Lcom/shabakaty/downloader/s36;->r:J

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 4
    iput-wide v0, p0, Lcom/shabakaty/downloader/s36;->s:J

    iput-boolean p2, p0, Lcom/shabakaty/downloader/s36;->t:Z

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/shabakaty/downloader/s36;->u:Lcom/shabakaty/downloader/g66;

    .line 1
    iget-boolean v0, v0, Lcom/shabakaty/downloader/g66;->e:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s36;->b()V

    return-void

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s36;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/shabakaty/downloader/s36;->u:Lcom/shabakaty/downloader/g66;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/shabakaty/downloader/s36;->t:Z

    .line 4
    invoke-virtual {v1, v0, v2, v3}, Lcom/shabakaty/downloader/g66;->a(Ljava/lang/Exception;ZZ)V

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/s36;->b()V

    return-void
.end method
