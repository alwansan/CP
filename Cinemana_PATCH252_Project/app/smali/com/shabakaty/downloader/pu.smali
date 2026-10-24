.class public final synthetic Lcom/shabakaty/downloader/pu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Ljava/util/concurrent/Executor;

.field public final synthetic u:J

.field public final synthetic v:Lcom/shabakaty/downloader/ar$a;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/tu;Ljava/util/concurrent/Executor;JLcom/shabakaty/downloader/ar$a;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/pu;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/pu;->s:Ljava/lang/Object;

    iput-object p2, p0, Lcom/shabakaty/downloader/pu;->t:Ljava/util/concurrent/Executor;

    iput-wide p3, p0, Lcom/shabakaty/downloader/pu;->u:J

    iput-object p5, p0, Lcom/shabakaty/downloader/pu;->v:Lcom/shabakaty/downloader/ar$a;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/pi2;Lcom/shabakaty/downloader/ar$a;J)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/pu;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/pu;->t:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/shabakaty/downloader/pu;->s:Ljava/lang/Object;

    iput-object p3, p0, Lcom/shabakaty/downloader/pu;->v:Lcom/shabakaty/downloader/ar$a;

    iput-wide p4, p0, Lcom/shabakaty/downloader/pu;->u:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Lcom/shabakaty/downloader/pu;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/pu;->s:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/shabakaty/downloader/tu;

    iget-object v0, p0, Lcom/shabakaty/downloader/pu;->t:Ljava/util/concurrent/Executor;

    iget-wide v6, p0, Lcom/shabakaty/downloader/pu;->u:J

    iget-object v5, p0, Lcom/shabakaty/downloader/pu;->v:Lcom/shabakaty/downloader/ar$a;

    .line 1
    iget-object v3, v2, Lcom/shabakaty/downloader/tu;->j:Landroid/content/Context;

    .line 2
    new-instance v8, Lcom/shabakaty/downloader/qu;

    move-object v1, v8

    move-object v4, v0

    invoke-direct/range {v1 .. v7}, Lcom/shabakaty/downloader/qu;-><init>(Lcom/shabakaty/downloader/tu;Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/shabakaty/downloader/ar$a;J)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/pu;->t:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/shabakaty/downloader/pu;->s:Ljava/lang/Object;

    check-cast v1, Lcom/shabakaty/downloader/pi2;

    iget-object v2, p0, Lcom/shabakaty/downloader/pu;->v:Lcom/shabakaty/downloader/ar$a;

    iget-wide v3, p0, Lcom/shabakaty/downloader/pu;->u:J

    .line 4
    new-instance v5, Lcom/shabakaty/downloader/jp0;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/shabakaty/downloader/jp0;-><init>(Lcom/shabakaty/downloader/pi2;Lcom/shabakaty/downloader/ar$a;J)V

    invoke-interface {v0, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
