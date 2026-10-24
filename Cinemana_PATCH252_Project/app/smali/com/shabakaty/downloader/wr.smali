.class public final synthetic Lcom/shabakaty/downloader/wr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic r:I

.field public final synthetic s:Lcom/shabakaty/downloader/yr;

.field public final synthetic t:Ljava/util/Collection;


# direct methods
.method public synthetic constructor <init>(Lcom/shabakaty/downloader/yr;Ljava/util/Collection;I)V
    .locals 0

    iput p3, p0, Lcom/shabakaty/downloader/wr;->r:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shabakaty/downloader/wr;->s:Lcom/shabakaty/downloader/yr;

    iput-object p2, p0, Lcom/shabakaty/downloader/wr;->t:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lcom/shabakaty/downloader/wr;->r:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/wr;->s:Lcom/shabakaty/downloader/yr;

    iget-object v1, p0, Lcom/shabakaty/downloader/wr;->t:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/shabakaty/downloader/cx4;

    .line 3
    iget-object v4, v0, Lcom/shabakaty/downloader/yr;->r:Lcom/shabakaty/downloader/fx4;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/shabakaty/downloader/cx4;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/shabakaty/downloader/fx4;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    iget-object v4, v0, Lcom/shabakaty/downloader/yr;->r:Lcom/shabakaty/downloader/fx4;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/shabakaty/downloader/cx4;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5
    iget-object v4, v4, Lcom/shabakaty/downloader/fx4;->b:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_1

    .line 8
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Use cases ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] now DETACHED for camera"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    .line 9
    invoke-virtual {v0, v1, v3}, Lcom/shabakaty/downloader/yr;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/cx4;

    .line 11
    instance-of v2, v2, Lcom/shabakaty/downloader/if3;

    if-eqz v2, :cond_3

    .line 12
    iget-object v1, v0, Lcom/shabakaty/downloader/yr;->w:Lcom/shabakaty/downloader/sr;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_4
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yr;->k()V

    .line 14
    iget-object v1, v0, Lcom/shabakaty/downloader/yr;->r:Lcom/shabakaty/downloader/fx4;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/fx4;->b()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 15
    iget-object v1, v0, Lcom/shabakaty/downloader/yr;->w:Lcom/shabakaty/downloader/sr;

    invoke-virtual {v1}, Lcom/shabakaty/downloader/sr;->d()V

    .line 16
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/yr;->w(Z)V

    .line 17
    iget-object v1, v0, Lcom/shabakaty/downloader/yr;->w:Lcom/shabakaty/downloader/sr;

    invoke-virtual {v1, v2}, Lcom/shabakaty/downloader/sr;->i(Z)V

    .line 18
    new-instance v1, Lcom/shabakaty/downloader/vv;

    invoke-direct {v1}, Lcom/shabakaty/downloader/vv;-><init>()V

    iput-object v1, v0, Lcom/shabakaty/downloader/yr;->B:Lcom/shabakaty/downloader/vv;

    .line 19
    sget-object v1, Lcom/shabakaty/downloader/yr$e;->v:Lcom/shabakaty/downloader/yr$e;

    const-string v4, "Closing camera."

    .line 20
    invoke-virtual {v0, v4, v3}, Lcom/shabakaty/downloader/yr;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    iget-object v4, v0, Lcom/shabakaty/downloader/yr;->u:Lcom/shabakaty/downloader/yr$e;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_7

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    const/4 v5, 0x3

    if-eq v4, v5, :cond_5

    const/4 v2, 0x5

    if-eq v4, v2, :cond_6

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close() ignored due to being in state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/shabakaty/downloader/yr;->u:Lcom/shabakaty/downloader/yr$e;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {v0, v1, v3}, Lcom/shabakaty/downloader/yr;->o(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 24
    :cond_5
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/yr;->x(Lcom/shabakaty/downloader/yr$e;)V

    .line 25
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/yr;->m(Z)V

    goto :goto_1

    .line 26
    :cond_6
    iget-object v2, v0, Lcom/shabakaty/downloader/yr;->x:Lcom/shabakaty/downloader/yr$f;

    invoke-virtual {v2}, Lcom/shabakaty/downloader/yr$f;->a()Z

    move-result v2

    .line 27
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/yr;->x(Lcom/shabakaty/downloader/yr$e;)V

    if-eqz v2, :cond_a

    .line 28
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yr;->r()Z

    move-result v1

    .line 29
    invoke-static {v1, v3}, Lcom/shabakaty/downloader/fl3;->i(ZLjava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yr;->p()V

    goto :goto_1

    .line 31
    :cond_7
    iget-object v1, v0, Lcom/shabakaty/downloader/yr;->z:Landroid/hardware/camera2/CameraDevice;

    if-nez v1, :cond_8

    const/4 v2, 0x1

    .line 32
    :cond_8
    invoke-static {v2, v3}, Lcom/shabakaty/downloader/fl3;->i(ZLjava/lang/String;)V

    .line 33
    sget-object v1, Lcom/shabakaty/downloader/yr$e;->r:Lcom/shabakaty/downloader/yr$e;

    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/yr;->x(Lcom/shabakaty/downloader/yr$e;)V

    goto :goto_1

    .line 34
    :cond_9
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yr;->z()V

    .line 35
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/yr;->w(Z)V

    .line 36
    iget-object v1, v0, Lcom/shabakaty/downloader/yr;->u:Lcom/shabakaty/downloader/yr$e;

    sget-object v2, Lcom/shabakaty/downloader/yr$e;->u:Lcom/shabakaty/downloader/yr$e;

    if-ne v1, v2, :cond_a

    .line 37
    invoke-virtual {v0}, Lcom/shabakaty/downloader/yr;->t()V

    :cond_a
    :goto_1
    return-void

    .line 38
    :goto_2
    iget-object v0, p0, Lcom/shabakaty/downloader/wr;->s:Lcom/shabakaty/downloader/yr;

    iget-object v1, p0, Lcom/shabakaty/downloader/wr;->t:Ljava/util/Collection;

    .line 39
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/shabakaty/downloader/yr;->y(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    iget-object v0, v0, Lcom/shabakaty/downloader/yr;->w:Lcom/shabakaty/downloader/sr;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/sr;->d()V

    return-void

    :catchall_0
    move-exception v1

    iget-object v0, v0, Lcom/shabakaty/downloader/yr;->w:Lcom/shabakaty/downloader/sr;

    invoke-virtual {v0}, Lcom/shabakaty/downloader/sr;->d()V

    .line 41
    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
