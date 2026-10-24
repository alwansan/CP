.class public final synthetic Lcom/shabakaty/downloader/zl5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@19.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final s:Lcom/shabakaty/downloader/hl5;

.field public final t:I


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/hl5;II)V
    .locals 1

    iput p3, p0, Lcom/shabakaty/downloader/zl5;->r:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/zl5;->s:Lcom/shabakaty/downloader/hl5;

    iput p2, p0, Lcom/shabakaty/downloader/zl5;->t:I

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/zl5;->s:Lcom/shabakaty/downloader/hl5;

    iput p2, p0, Lcom/shabakaty/downloader/zl5;->t:I

    return-void

    .line 3
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/zl5;->s:Lcom/shabakaty/downloader/hl5;

    iput p2, p0, Lcom/shabakaty/downloader/zl5;->t:I

    return-void

    .line 4
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/zl5;->s:Lcom/shabakaty/downloader/hl5;

    iput p2, p0, Lcom/shabakaty/downloader/zl5;->t:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/shabakaty/downloader/zl5;->r:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 1
    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/zl5;->s:Lcom/shabakaty/downloader/hl5;

    iget v1, p0, Lcom/shabakaty/downloader/zl5;->t:I

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/hl5;->a:Lcom/shabakaty/downloader/vh5;

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/vh5;->D:Lcom/shabakaty/downloader/nw$d;

    .line 4
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/nw$d;->onApplicationDisconnected(I)V

    return-void

    .line 5
    :pswitch_1
    iget-object v0, p0, Lcom/shabakaty/downloader/zl5;->s:Lcom/shabakaty/downloader/hl5;

    iget v2, p0, Lcom/shabakaty/downloader/zl5;->t:I

    .line 6
    iget-object v3, v0, Lcom/shabakaty/downloader/hl5;->a:Lcom/shabakaty/downloader/vh5;

    const/4 v4, -0x1

    .line 7
    iput v4, v3, Lcom/shabakaty/downloader/vh5;->x:I

    .line 8
    iput v4, v3, Lcom/shabakaty/downloader/vh5;->y:I

    const/4 v4, 0x0

    .line 9
    iput-object v4, v3, Lcom/shabakaty/downloader/vh5;->t:Lcom/shabakaty/downloader/nc;

    .line 10
    iput-object v4, v3, Lcom/shabakaty/downloader/vh5;->u:Ljava/lang/String;

    const-wide/16 v5, 0x0

    .line 11
    iput-wide v5, v3, Lcom/shabakaty/downloader/vh5;->v:D

    .line 12
    invoke-virtual {v3}, Lcom/shabakaty/downloader/vh5;->n()D

    const/4 v5, 0x0

    .line 13
    iput-boolean v5, v3, Lcom/shabakaty/downloader/vh5;->w:Z

    .line 14
    iput-object v4, v3, Lcom/shabakaty/downloader/vh5;->z:Lcom/shabakaty/downloader/rg5;

    .line 15
    iget-object v3, v0, Lcom/shabakaty/downloader/hl5;->a:Lcom/shabakaty/downloader/vh5;

    .line 16
    iput v1, v3, Lcom/shabakaty/downloader/vh5;->l:I

    .line 17
    iget-object v3, v3, Lcom/shabakaty/downloader/vh5;->E:Ljava/util/List;

    .line 18
    monitor-enter v3

    .line 19
    :try_start_0
    iget-object v1, v0, Lcom/shabakaty/downloader/hl5;->a:Lcom/shabakaty/downloader/vh5;

    .line 20
    iget-object v1, v1, Lcom/shabakaty/downloader/vh5;->E:Ljava/util/List;

    .line 21
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/na7;

    .line 22
    invoke-virtual {v4, v2}, Lcom/shabakaty/downloader/na7;->d(I)V

    goto :goto_0

    .line 23
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    iget-object v1, v0, Lcom/shabakaty/downloader/hl5;->a:Lcom/shabakaty/downloader/vh5;

    .line 25
    invoke-virtual {v1}, Lcom/shabakaty/downloader/vh5;->m()V

    .line 26
    iget-object v0, v0, Lcom/shabakaty/downloader/hl5;->a:Lcom/shabakaty/downloader/vh5;

    iget-object v1, v0, Lcom/shabakaty/downloader/vh5;->j:Lcom/shabakaty/downloader/hl5;

    .line 27
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/vh5;->f(Lcom/shabakaty/downloader/bg5;)Lcom/shabakaty/downloader/uk4;

    return-void

    :catchall_0
    move-exception v0

    .line 28
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 29
    :pswitch_2
    iget-object v0, p0, Lcom/shabakaty/downloader/zl5;->s:Lcom/shabakaty/downloader/hl5;

    iget v2, p0, Lcom/shabakaty/downloader/zl5;->t:I

    if-nez v2, :cond_2

    .line 30
    iget-object v2, v0, Lcom/shabakaty/downloader/hl5;->a:Lcom/shabakaty/downloader/vh5;

    const/4 v3, 0x2

    .line 31
    iput v3, v2, Lcom/shabakaty/downloader/vh5;->l:I

    .line 32
    iput-boolean v1, v2, Lcom/shabakaty/downloader/vh5;->m:Z

    .line 33
    iput-boolean v1, v2, Lcom/shabakaty/downloader/vh5;->n:Z

    .line 34
    iget-object v3, v2, Lcom/shabakaty/downloader/vh5;->E:Ljava/util/List;

    .line 35
    monitor-enter v3

    .line 36
    :try_start_2
    iget-object v0, v0, Lcom/shabakaty/downloader/hl5;->a:Lcom/shabakaty/downloader/vh5;

    .line 37
    iget-object v0, v0, Lcom/shabakaty/downloader/vh5;->E:Ljava/util/List;

    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/na7;

    .line 39
    invoke-virtual {v1}, Lcom/shabakaty/downloader/na7;->a()V

    goto :goto_1

    .line 40
    :cond_1
    monitor-exit v3

    goto :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 41
    :cond_2
    iget-object v3, v0, Lcom/shabakaty/downloader/hl5;->a:Lcom/shabakaty/downloader/vh5;

    .line 42
    iput v1, v3, Lcom/shabakaty/downloader/vh5;->l:I

    .line 43
    iget-object v1, v3, Lcom/shabakaty/downloader/vh5;->E:Ljava/util/List;

    .line 44
    monitor-enter v1

    .line 45
    :try_start_3
    iget-object v3, v0, Lcom/shabakaty/downloader/hl5;->a:Lcom/shabakaty/downloader/vh5;

    .line 46
    iget-object v3, v3, Lcom/shabakaty/downloader/vh5;->E:Ljava/util/List;

    .line 47
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/shabakaty/downloader/na7;

    .line 48
    invoke-virtual {v4, v2}, Lcom/shabakaty/downloader/na7;->c(I)V

    goto :goto_2

    .line 49
    :cond_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 50
    iget-object v0, v0, Lcom/shabakaty/downloader/hl5;->a:Lcom/shabakaty/downloader/vh5;

    .line 51
    invoke-virtual {v0}, Lcom/shabakaty/downloader/vh5;->m()V

    :goto_3
    return-void

    :catchall_2
    move-exception v0

    .line 52
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    .line 53
    :goto_4
    iget-object v0, p0, Lcom/shabakaty/downloader/zl5;->s:Lcom/shabakaty/downloader/hl5;

    iget v1, p0, Lcom/shabakaty/downloader/zl5;->t:I

    .line 54
    iget-object v2, v0, Lcom/shabakaty/downloader/hl5;->a:Lcom/shabakaty/downloader/vh5;

    const/4 v3, 0x3

    .line 55
    iput v3, v2, Lcom/shabakaty/downloader/vh5;->l:I

    .line 56
    iget-object v2, v2, Lcom/shabakaty/downloader/vh5;->E:Ljava/util/List;

    .line 57
    monitor-enter v2

    .line 58
    :try_start_5
    iget-object v0, v0, Lcom/shabakaty/downloader/hl5;->a:Lcom/shabakaty/downloader/vh5;

    .line 59
    iget-object v0, v0, Lcom/shabakaty/downloader/vh5;->E:Ljava/util/List;

    .line 60
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/na7;

    .line 61
    invoke-virtual {v3, v1}, Lcom/shabakaty/downloader/na7;->b(I)V

    goto :goto_5

    .line 62
    :cond_4
    monitor-exit v2

    return-void

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
