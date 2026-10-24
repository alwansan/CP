.class public final synthetic Lcom/shabakaty/downloader/jl5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final s:Ljava/lang/Object;

.field public final t:Ljava/lang/Object;

.field public final u:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/ox5;ILcom/shabakaty/downloader/wv5;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/jl5;->r:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/jl5;->s:Ljava/lang/Object;

    iput p2, p0, Lcom/shabakaty/downloader/jl5;->u:I

    iput-object p3, p0, Lcom/shabakaty/downloader/jl5;->t:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/shabakaty/downloader/tk5;Landroidx/mediarouter/media/f;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/jl5;->r:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/jl5;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/jl5;->t:Ljava/lang/Object;

    iput p3, p0, Lcom/shabakaty/downloader/jl5;->u:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/shabakaty/downloader/jl5;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/jl5;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/tk5;

    iget-object v1, p0, Lcom/shabakaty/downloader/jl5;->t:Ljava/lang/Object;

    check-cast v1, Landroidx/mediarouter/media/f;

    iget v2, p0, Lcom/shabakaty/downloader/jl5;->u:I

    .line 2
    iget-object v3, v0, Lcom/shabakaty/downloader/tk5;->b:Ljava/util/Map;

    monitor-enter v3

    .line 3
    :try_start_0
    invoke-virtual {v0, v1, v2}, Lcom/shabakaty/downloader/tk5;->i2(Landroidx/mediarouter/media/f;I)V

    .line 4
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/jl5;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ox5;

    iget v1, p0, Lcom/shabakaty/downloader/jl5;->u:I

    iget-object v2, p0, Lcom/shabakaty/downloader/jl5;->t:Ljava/lang/Object;

    check-cast v2, Lcom/shabakaty/downloader/wv5;

    .line 6
    iget-object v0, v0, Lcom/shabakaty/downloader/ox5;->s:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    check-cast v0, Lcom/shabakaty/downloader/gy5;

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/gy5;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Local AnalyticsService processed last dispatch request"

    .line 7
    invoke-virtual {v2, v0}, Lcom/shabakaty/downloader/fq1;->H1(Ljava/lang/String;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
