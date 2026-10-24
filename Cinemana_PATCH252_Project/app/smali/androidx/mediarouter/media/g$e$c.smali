.class public final Landroidx/mediarouter/media/g$e$c;
.super Landroid/os/Handler;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/g$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/mediarouter/media/g$c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/mediarouter/media/g$h;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Landroidx/mediarouter/media/g$e;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/g$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/media/g$e$c;->c:Landroidx/mediarouter/media/g$e;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/media/g$e$c;->a:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/media/g$e$c;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/mediarouter/media/g$c;ILjava/lang/Object;I)V
    .locals 5

    .line 1
    iget-object v0, p1, Landroidx/mediarouter/media/g$c;->a:Landroidx/mediarouter/media/g;

    .line 2
    iget-object v1, p1, Landroidx/mediarouter/media/g$c;->b:Landroidx/mediarouter/media/g$b;

    const v2, 0xff00

    and-int/2addr v2, p2

    const/16 v3, 0x100

    if-eq v2, v3, :cond_1

    const/16 p1, 0x200

    if-eq v2, p1, :cond_0

    goto/16 :goto_6

    .line 3
    :cond_0
    check-cast p3, Landroidx/mediarouter/media/g$g;

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_6

    .line 4
    :pswitch_0
    invoke-virtual {v1, v0, p3}, Landroidx/mediarouter/media/g$b;->onProviderChanged(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$g;)V

    goto/16 :goto_6

    .line 5
    :pswitch_1
    invoke-virtual {v1, v0, p3}, Landroidx/mediarouter/media/g$b;->onProviderRemoved(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$g;)V

    goto/16 :goto_6

    .line 6
    :pswitch_2
    invoke-virtual {v1, v0, p3}, Landroidx/mediarouter/media/g$b;->onProviderAdded(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$g;)V

    goto/16 :goto_6

    :cond_1
    const/16 v2, 0x106

    const/16 v3, 0x108

    if-eq p2, v3, :cond_3

    if-ne p2, v2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    move-object v4, p3

    check-cast v4, Landroidx/mediarouter/media/g$h;

    goto :goto_1

    :cond_3
    :goto_0
    move-object v4, p3

    check-cast v4, Lcom/shabakaty/downloader/y93;

    iget-object v4, v4, Lcom/shabakaty/downloader/y93;->b:Ljava/lang/Object;

    check-cast v4, Landroidx/mediarouter/media/g$h;

    :goto_1
    if-eq p2, v3, :cond_5

    if-ne p2, v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 p3, 0x0

    goto :goto_3

    .line 8
    :cond_5
    :goto_2
    check-cast p3, Lcom/shabakaty/downloader/y93;

    iget-object p3, p3, Lcom/shabakaty/downloader/y93;->a:Ljava/lang/Object;

    check-cast p3, Landroidx/mediarouter/media/g$h;

    :goto_3
    if-eqz v4, :cond_9

    .line 9
    iget v2, p1, Landroidx/mediarouter/media/g$c;->d:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_7

    iget-object p1, p1, Landroidx/mediarouter/media/g$c;->c:Landroidx/mediarouter/media/f;

    .line 10
    invoke-virtual {v4, p1}, Landroidx/mediarouter/media/g$h;->i(Landroidx/mediarouter/media/f;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    .line 11
    :cond_6
    sget-object p1, Landroidx/mediarouter/media/g;->d:Landroidx/mediarouter/media/g$e;

    const/4 p1, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 p1, 0x1

    :goto_5
    if-nez p1, :cond_8

    goto :goto_6

    :cond_8
    packed-switch p2, :pswitch_data_1

    goto :goto_6

    .line 12
    :pswitch_3
    invoke-virtual {v1, v0, v4, p4, p3}, Landroidx/mediarouter/media/g$b;->onRouteSelected(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;ILandroidx/mediarouter/media/g$h;)V

    goto :goto_6

    .line 13
    :pswitch_4
    invoke-virtual {v1, v0, v4, p4}, Landroidx/mediarouter/media/g$b;->onRouteUnselected(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;I)V

    goto :goto_6

    .line 14
    :pswitch_5
    invoke-virtual {v1, v0, v4, p4, v4}, Landroidx/mediarouter/media/g$b;->onRouteSelected(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;ILandroidx/mediarouter/media/g$h;)V

    goto :goto_6

    .line 15
    :pswitch_6
    invoke-virtual {v1, v0, v4}, Landroidx/mediarouter/media/g$b;->onRoutePresentationDisplayChanged(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;)V

    goto :goto_6

    .line 16
    :pswitch_7
    invoke-virtual {v1, v0, v4}, Landroidx/mediarouter/media/g$b;->onRouteVolumeChanged(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;)V

    goto :goto_6

    .line 17
    :pswitch_8
    invoke-virtual {v1, v0, v4}, Landroidx/mediarouter/media/g$b;->onRouteChanged(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;)V

    goto :goto_6

    .line 18
    :pswitch_9
    invoke-virtual {v1, v0, v4}, Landroidx/mediarouter/media/g$b;->onRouteRemoved(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;)V

    goto :goto_6

    .line 19
    :pswitch_a
    invoke-virtual {v1, v0, v4}, Landroidx/mediarouter/media/g$b;->onRouteAdded(Landroidx/mediarouter/media/g;Landroidx/mediarouter/media/g$h;)V

    :cond_9
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x201
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x101
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public b(ILjava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public c(ILjava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2
    iput p3, p1, Landroid/os/Message;->arg1:I

    .line 3
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, 0x103

    if-ne v0, v2, :cond_0

    .line 4
    iget-object v2, p0, Landroidx/mediarouter/media/g$e$c;->c:Landroidx/mediarouter/media/g$e;

    .line 5
    invoke-virtual {v2}, Landroidx/mediarouter/media/g$e;->g()Landroidx/mediarouter/media/g$h;

    move-result-object v2

    .line 6
    iget-object v2, v2, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    .line 7
    move-object v3, v1

    check-cast v3, Landroidx/mediarouter/media/g$h;

    .line 8
    iget-object v3, v3, Landroidx/mediarouter/media/g$h;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    iget-object v2, p0, Landroidx/mediarouter/media/g$e$c;->c:Landroidx/mediarouter/media/g$e;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/mediarouter/media/g$e;->q(Z)V

    :cond_0
    const/16 v2, 0x106

    if-eq v0, v2, :cond_2

    const/16 v2, 0x108

    if-eq v0, v2, :cond_1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 11
    :pswitch_0
    iget-object v2, p0, Landroidx/mediarouter/media/g$e$c;->c:Landroidx/mediarouter/media/g$e;

    iget-object v2, v2, Landroidx/mediarouter/media/g$e;->l:Landroidx/mediarouter/media/p;

    move-object v3, v1

    check-cast v3, Landroidx/mediarouter/media/g$h;

    invoke-virtual {v2, v3}, Landroidx/mediarouter/media/p;->s(Landroidx/mediarouter/media/g$h;)V

    goto :goto_1

    .line 12
    :pswitch_1
    iget-object v2, p0, Landroidx/mediarouter/media/g$e$c;->c:Landroidx/mediarouter/media/g$e;

    iget-object v2, v2, Landroidx/mediarouter/media/g$e;->l:Landroidx/mediarouter/media/p;

    move-object v3, v1

    check-cast v3, Landroidx/mediarouter/media/g$h;

    invoke-virtual {v2, v3}, Landroidx/mediarouter/media/p;->t(Landroidx/mediarouter/media/g$h;)V

    goto :goto_1

    .line 13
    :pswitch_2
    iget-object v2, p0, Landroidx/mediarouter/media/g$e$c;->c:Landroidx/mediarouter/media/g$e;

    iget-object v2, v2, Landroidx/mediarouter/media/g$e;->l:Landroidx/mediarouter/media/p;

    move-object v3, v1

    check-cast v3, Landroidx/mediarouter/media/g$h;

    invoke-virtual {v2, v3}, Landroidx/mediarouter/media/p;->r(Landroidx/mediarouter/media/g$h;)V

    goto :goto_1

    .line 14
    :cond_1
    move-object v2, v1

    check-cast v2, Lcom/shabakaty/downloader/y93;

    iget-object v2, v2, Lcom/shabakaty/downloader/y93;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/mediarouter/media/g$h;

    .line 15
    iget-object v3, p0, Landroidx/mediarouter/media/g$e$c;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v3, p0, Landroidx/mediarouter/media/g$e$c;->c:Landroidx/mediarouter/media/g$e;

    iget-object v3, v3, Landroidx/mediarouter/media/g$e;->l:Landroidx/mediarouter/media/p;

    invoke-virtual {v3, v2}, Landroidx/mediarouter/media/p;->r(Landroidx/mediarouter/media/g$h;)V

    .line 17
    iget-object v3, p0, Landroidx/mediarouter/media/g$e$c;->c:Landroidx/mediarouter/media/g$e;

    iget-object v3, v3, Landroidx/mediarouter/media/g$e;->l:Landroidx/mediarouter/media/p;

    invoke-virtual {v3, v2}, Landroidx/mediarouter/media/p;->u(Landroidx/mediarouter/media/g$h;)V

    goto :goto_1

    .line 18
    :cond_2
    move-object v2, v1

    check-cast v2, Lcom/shabakaty/downloader/y93;

    iget-object v2, v2, Lcom/shabakaty/downloader/y93;->b:Ljava/lang/Object;

    check-cast v2, Landroidx/mediarouter/media/g$h;

    .line 19
    iget-object v3, p0, Landroidx/mediarouter/media/g$e$c;->c:Landroidx/mediarouter/media/g$e;

    iget-object v3, v3, Landroidx/mediarouter/media/g$e;->l:Landroidx/mediarouter/media/p;

    invoke-virtual {v3, v2}, Landroidx/mediarouter/media/p;->u(Landroidx/mediarouter/media/g$h;)V

    .line 20
    iget-object v3, p0, Landroidx/mediarouter/media/g$e$c;->c:Landroidx/mediarouter/media/g$e;

    .line 21
    iget-object v3, v3, Landroidx/mediarouter/media/g$e;->n:Landroidx/mediarouter/media/g$h;

    if-eqz v3, :cond_4

    .line 22
    invoke-virtual {v2}, Landroidx/mediarouter/media/g$h;->e()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 23
    iget-object v2, p0, Landroidx/mediarouter/media/g$e$c;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/g$h;

    .line 24
    iget-object v4, p0, Landroidx/mediarouter/media/g$e$c;->c:Landroidx/mediarouter/media/g$e;

    iget-object v4, v4, Landroidx/mediarouter/media/g$e;->l:Landroidx/mediarouter/media/p;

    invoke-virtual {v4, v3}, Landroidx/mediarouter/media/p;->t(Landroidx/mediarouter/media/g$h;)V

    goto :goto_0

    .line 25
    :cond_3
    iget-object v2, p0, Landroidx/mediarouter/media/g$e$c;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 26
    :cond_4
    :goto_1
    :try_start_0
    iget-object v2, p0, Landroidx/mediarouter/media/g$e$c;->c:Landroidx/mediarouter/media/g$e;

    iget-object v2, v2, Landroidx/mediarouter/media/g$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_6

    .line 27
    iget-object v3, p0, Landroidx/mediarouter/media/g$e$c;->c:Landroidx/mediarouter/media/g$e;

    iget-object v3, v3, Landroidx/mediarouter/media/g$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/g;

    if-nez v3, :cond_5

    .line 28
    iget-object v3, p0, Landroidx/mediarouter/media/g$e$c;->c:Landroidx/mediarouter/media/g$e;

    iget-object v3, v3, Landroidx/mediarouter/media/g$e;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 29
    :cond_5
    iget-object v4, p0, Landroidx/mediarouter/media/g$e$c;->a:Ljava/util/ArrayList;

    iget-object v3, v3, Landroidx/mediarouter/media/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 30
    :cond_6
    iget-object v2, p0, Landroidx/mediarouter/media/g$e$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_7

    .line 31
    iget-object v4, p0, Landroidx/mediarouter/media/g$e$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/mediarouter/media/g$c;

    invoke-virtual {p0, v4, v0, v1, p1}, Landroidx/mediarouter/media/g$e$c;->a(Landroidx/mediarouter/media/g$c;ILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 32
    :cond_7
    iget-object p1, p0, Landroidx/mediarouter/media/g$e$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Landroidx/mediarouter/media/g$e$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 33
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
