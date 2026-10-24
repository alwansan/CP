.class public final synthetic Lcom/shabakaty/downloader/n25;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/o25$a;

.field public final synthetic t:Lcom/shabakaty/downloader/zm0;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/o25$a;Lcom/shabakaty/downloader/zm0;I)V
    .locals 0

    iput p3, p0, Lcom/shabakaty/downloader/n25;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/n25;->s:Lcom/shabakaty/downloader/o25$a;

    iput-object p2, p0, Lcom/shabakaty/downloader/n25;->t:Lcom/shabakaty/downloader/zm0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/shabakaty/downloader/n25;->r:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/n25;->s:Lcom/shabakaty/downloader/o25$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/n25;->t:Lcom/shabakaty/downloader/zm0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    monitor-enter v1

    .line 2
    monitor-exit v1

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/o25$a;->b:Lcom/shabakaty/downloader/o25;

    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/o25;->I(Lcom/shabakaty/downloader/zm0;)V

    return-void

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/shabakaty/downloader/n25;->s:Lcom/shabakaty/downloader/o25$a;

    iget-object v1, p0, Lcom/shabakaty/downloader/n25;->t:Lcom/shabakaty/downloader/zm0;

    .line 5
    iget-object v0, v0, Lcom/shabakaty/downloader/o25$a;->b:Lcom/shabakaty/downloader/o25;

    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/o25;->U(Lcom/shabakaty/downloader/zm0;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
