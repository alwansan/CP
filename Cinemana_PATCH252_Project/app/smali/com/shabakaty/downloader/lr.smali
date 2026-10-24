.class public final synthetic Lcom/shabakaty/downloader/lr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Ljava/lang/Object;

.field public final synthetic t:Z


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;Z)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/shabakaty/downloader/lr;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/lr;->s:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/shabakaty/downloader/lr;->t:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/mr;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/shabakaty/downloader/lr;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/lr;->s:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/shabakaty/downloader/lr;->t:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shabakaty/downloader/ye$a;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/shabakaty/downloader/lr;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/lr;->s:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/shabakaty/downloader/lr;->t:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/shabakaty/downloader/lr;->r:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/lr;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/ye$a;

    iget-boolean v1, p0, Lcom/shabakaty/downloader/lr;->t:Z

    .line 1
    iget-object v0, v0, Lcom/shabakaty/downloader/ye$a;->b:Lcom/shabakaty/downloader/ye;

    sget v2, Lcom/shabakaty/downloader/sy4;->a:I

    invoke-interface {v0, v1}, Lcom/shabakaty/downloader/ye;->c(Z)V

    return-void

    .line 2
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/lr;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/downloader/mr;

    iget-boolean v3, p0, Lcom/shabakaty/downloader/lr;->t:Z

    .line 3
    iget-boolean v4, v0, Lcom/shabakaty/downloader/mr;->a:Z

    if-ne v4, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput-boolean v3, v0, Lcom/shabakaty/downloader/mr;->a:Z

    if-eqz v3, :cond_1

    .line 5
    iget-boolean v3, v0, Lcom/shabakaty/downloader/mr;->b:Z

    if-eqz v3, :cond_2

    .line 6
    iget-object v3, v0, Lcom/shabakaty/downloader/mr;->c:Lcom/shabakaty/downloader/sr;

    .line 7
    iget-object v4, v3, Lcom/shabakaty/downloader/sr;->b:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/shabakaty/downloader/nr;

    invoke-direct {v5, v3, v1}, Lcom/shabakaty/downloader/nr;-><init>(Lcom/shabakaty/downloader/sr;I)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8
    iput-boolean v2, v0, Lcom/shabakaty/downloader/mr;->b:Z

    goto :goto_0

    .line 9
    :cond_1
    iget-object v3, v0, Lcom/shabakaty/downloader/mr;->e:Ljava/lang/Object;

    monitor-enter v3

    .line 10
    :try_start_0
    new-instance v1, Lcom/shabakaty/downloader/js$a;

    invoke-direct {v1}, Lcom/shabakaty/downloader/js$a;-><init>()V

    iput-object v1, v0, Lcom/shabakaty/downloader/mr;->f:Lcom/shabakaty/downloader/js$a;

    .line 11
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    iget-object v1, v0, Lcom/shabakaty/downloader/mr;->g:Lcom/shabakaty/downloader/ar$a;

    if-eqz v1, :cond_2

    .line 13
    new-instance v2, Lcom/shabakaty/downloader/ct;

    const-string v3, "The camera control has became inactive."

    invoke-direct {v2, v3}, Lcom/shabakaty/downloader/ct;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/ar$a;->c(Ljava/lang/Throwable;)Z

    const/4 v1, 0x0

    .line 14
    iput-object v1, v0, Lcom/shabakaty/downloader/mr;->g:Lcom/shabakaty/downloader/ar$a;

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 16
    :goto_1
    iget-object v0, p0, Lcom/shabakaty/downloader/lr;->s:Ljava/lang/Object;

    check-cast v0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;

    iget-boolean v3, p0, Lcom/shabakaty/downloader/lr;->t:Z

    sget v4, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->F:I

    const-string v4, "this$0"

    .line 17
    invoke-static {v0, v4}, Lcom/shabakaty/downloader/j32;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-boolean v4, v0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->D:Z

    if-eqz v4, :cond_3

    if-eqz v3, :cond_4

    iget-boolean v3, v0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->z:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->C:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->A:Z

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    .line 19
    iget-boolean v3, v0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->z:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->C:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v0, Lcom/shabakaty/cinemana/player/NextPreviousEpisodeButton;->B:Z

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 20
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
