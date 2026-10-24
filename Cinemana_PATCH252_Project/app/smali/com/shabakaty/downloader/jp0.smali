.class public final synthetic Lcom/shabakaty/downloader/jp0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/lang/Object;

.field public final synthetic u:J


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/o25$a;Ljava/lang/Object;J)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/jp0;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/jp0;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/jp0;->t:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/shabakaty/downloader/jp0;->u:J

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/pi2;Lcom/shabakaty/downloader/ar$a;J)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/jp0;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/jp0;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/jp0;->t:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/shabakaty/downloader/jp0;->u:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/shabakaty/downloader/jp0;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/jp0;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/pi2;

    iget-object v1, p0, Lcom/shabakaty/downloader/jp0;->t:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/ar$a;

    iget-wide v2, p0, Lcom/shabakaty/downloader/jp0;->u:J

    .line 1
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot complete surfaceList within "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/shabakaty/downloader/ar$a;->c(Ljava/lang/Throwable;)Z

    const/4 v1, 0x1

    .line 3
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/jp0;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/o25$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/jp0;->t:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/shabakaty/downloader/jp0;->u:J

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/o25$a;->b:Lcom/shabakaty/downloader/o25;

    sget v4, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-interface {v0, v1, v2, v3}, Lcom/shabakaty/downloader/o25;->N(Ljava/lang/Object;J)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
