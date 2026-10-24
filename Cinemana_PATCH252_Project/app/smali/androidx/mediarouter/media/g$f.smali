.class public final Landroidx/mediarouter/media/g$f;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field public final a:Landroidx/mediarouter/media/c$e;

.field public final b:I

.field public final c:Landroidx/mediarouter/media/g$h;

.field public final d:Landroidx/mediarouter/media/g$h;

.field public final e:Landroidx/mediarouter/media/g$h;

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/mediarouter/media/c$b$a;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/mediarouter/media/g$e;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lcom/shabakaty/downloader/pi2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/shabakaty/downloader/pi2<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z

.field public j:Z


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/g$e;Landroidx/mediarouter/media/g$h;Landroidx/mediarouter/media/c$e;ILandroidx/mediarouter/media/g$h;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/mediarouter/media/g$e;",
            "Landroidx/mediarouter/media/g$h;",
            "Landroidx/mediarouter/media/c$e;",
            "I",
            "Landroidx/mediarouter/media/g$h;",
            "Ljava/util/Collection<",
            "Landroidx/mediarouter/media/c$b$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/mediarouter/media/g$f;->h:Lcom/shabakaty/downloader/pi2;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroidx/mediarouter/media/g$f;->i:Z

    .line 4
    iput-boolean v1, p0, Landroidx/mediarouter/media/g$f;->j:Z

    .line 5
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroidx/mediarouter/media/g$f;->g:Ljava/lang/ref/WeakReference;

    .line 6
    iput-object p2, p0, Landroidx/mediarouter/media/g$f;->d:Landroidx/mediarouter/media/g$h;

    .line 7
    iput-object p3, p0, Landroidx/mediarouter/media/g$f;->a:Landroidx/mediarouter/media/c$e;

    .line 8
    iput p4, p0, Landroidx/mediarouter/media/g$f;->b:I

    .line 9
    iget-object p2, p1, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    iput-object p2, p0, Landroidx/mediarouter/media/g$f;->c:Landroidx/mediarouter/media/g$h;

    .line 10
    iput-object p5, p0, Landroidx/mediarouter/media/g$f;->e:Landroidx/mediarouter/media/g$h;

    if-nez p6, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, p0, Landroidx/mediarouter/media/g$f;->f:Ljava/util/List;

    .line 12
    iget-object p1, p1, Landroidx/mediarouter/media/g$e;->k:Landroidx/mediarouter/media/g$e$c;

    new-instance p2, Lcom/shabakaty/downloader/gq2;

    invoke-direct {p2, p0, v1}, Lcom/shabakaty/downloader/gq2;-><init>(Landroidx/mediarouter/media/g$f;I)V

    const-wide/16 p3, 0x3a98

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/mediarouter/media/g$f;->i:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/mediarouter/media/g$f;->j:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/mediarouter/media/g$f;->j:Z

    .line 3
    iget-object v0, p0, Landroidx/mediarouter/media/g$f;->a:Landroidx/mediarouter/media/c$e;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/c$e;->h(I)V

    .line 5
    iget-object v0, p0, Landroidx/mediarouter/media/g$f;->a:Landroidx/mediarouter/media/c$e;

    invoke-virtual {v0}, Landroidx/mediarouter/media/c$e;->d()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()V
    .locals 6

    .line 1
    invoke-static {}, Landroidx/mediarouter/media/g;->b()V

    .line 2
    iget-boolean v0, p0, Landroidx/mediarouter/media/g$f;->i:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Landroidx/mediarouter/media/g$f;->j:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/g$f;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/g$e;

    if-eqz v0, :cond_a

    .line 4
    iget-object v1, v0, Landroidx/mediarouter/media/g$e;->x:Landroidx/mediarouter/media/g$f;

    if-ne v1, p0, :cond_a

    iget-object v1, p0, Landroidx/mediarouter/media/g$f;->h:Lcom/shabakaty/downloader/pi2;

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Landroidx/mediarouter/media/g$f;->i:Z

    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Landroidx/mediarouter/media/g$e;->x:Landroidx/mediarouter/media/g$f;

    .line 8
    iget-object v0, p0, Landroidx/mediarouter/media/g$f;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/g$e;

    if-eqz v0, :cond_6

    .line 9
    iget-object v2, v0, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    iget-object v3, p0, Landroidx/mediarouter/media/g$f;->c:Landroidx/mediarouter/media/g$h;

    if-eq v2, v3, :cond_2

    goto :goto_1

    .line 10
    :cond_2
    iget-object v2, v0, Landroidx/mediarouter/media/g$e;->k:Landroidx/mediarouter/media/g$e$c;

    const/16 v4, 0x107

    iget v5, p0, Landroidx/mediarouter/media/g$f;->b:I

    invoke-virtual {v2, v4, v3, v5}, Landroidx/mediarouter/media/g$e$c;->c(ILjava/lang/Object;I)V

    .line 11
    iget-object v2, v0, Landroidx/mediarouter/media/g$e;->q:Landroidx/mediarouter/media/c$e;

    if-eqz v2, :cond_3

    .line 12
    iget v3, p0, Landroidx/mediarouter/media/g$f;->b:I

    invoke-virtual {v2, v3}, Landroidx/mediarouter/media/c$e;->h(I)V

    .line 13
    iget-object v2, v0, Landroidx/mediarouter/media/g$e;->q:Landroidx/mediarouter/media/c$e;

    invoke-virtual {v2}, Landroidx/mediarouter/media/c$e;->d()V

    .line 14
    :cond_3
    iget-object v2, v0, Landroidx/mediarouter/media/g$e;->t:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 15
    iget-object v2, v0, Landroidx/mediarouter/media/g$e;->t:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/mediarouter/media/c$e;

    .line 16
    iget v4, p0, Landroidx/mediarouter/media/g$f;->b:I

    invoke-virtual {v3, v4}, Landroidx/mediarouter/media/c$e;->h(I)V

    .line 17
    invoke-virtual {v3}, Landroidx/mediarouter/media/c$e;->d()V

    goto :goto_0

    .line 18
    :cond_4
    iget-object v2, v0, Landroidx/mediarouter/media/g$e;->t:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 19
    :cond_5
    iput-object v1, v0, Landroidx/mediarouter/media/g$e;->q:Landroidx/mediarouter/media/c$e;

    .line 20
    :cond_6
    :goto_1
    iget-object v0, p0, Landroidx/mediarouter/media/g$f;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/g$e;

    if-nez v0, :cond_7

    goto :goto_3

    .line 21
    :cond_7
    iget-object v1, p0, Landroidx/mediarouter/media/g$f;->d:Landroidx/mediarouter/media/g$h;

    iput-object v1, v0, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    .line 22
    iget-object v2, p0, Landroidx/mediarouter/media/g$f;->a:Landroidx/mediarouter/media/c$e;

    iput-object v2, v0, Landroidx/mediarouter/media/g$e;->q:Landroidx/mediarouter/media/c$e;

    .line 23
    iget-object v2, p0, Landroidx/mediarouter/media/g$f;->e:Landroidx/mediarouter/media/g$h;

    if-nez v2, :cond_8

    .line 24
    iget-object v2, v0, Landroidx/mediarouter/media/g$e;->k:Landroidx/mediarouter/media/g$e$c;

    const/16 v3, 0x106

    new-instance v4, Lcom/shabakaty/downloader/y93;

    iget-object v5, p0, Landroidx/mediarouter/media/g$f;->c:Landroidx/mediarouter/media/g$h;

    invoke-direct {v4, v5, v1}, Lcom/shabakaty/downloader/y93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v1, p0, Landroidx/mediarouter/media/g$f;->b:I

    invoke-virtual {v2, v3, v4, v1}, Landroidx/mediarouter/media/g$e$c;->c(ILjava/lang/Object;I)V

    goto :goto_2

    .line 25
    :cond_8
    iget-object v3, v0, Landroidx/mediarouter/media/g$e;->k:Landroidx/mediarouter/media/g$e$c;

    const/16 v4, 0x108

    new-instance v5, Lcom/shabakaty/downloader/y93;

    invoke-direct {v5, v2, v1}, Lcom/shabakaty/downloader/y93;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget v1, p0, Landroidx/mediarouter/media/g$f;->b:I

    invoke-virtual {v3, v4, v5, v1}, Landroidx/mediarouter/media/g$e$c;->c(ILjava/lang/Object;I)V

    .line 26
    :goto_2
    iget-object v1, v0, Landroidx/mediarouter/media/g$e;->t:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 27
    invoke-virtual {v0}, Landroidx/mediarouter/media/g$e;->i()V

    .line 28
    invoke-virtual {v0}, Landroidx/mediarouter/media/g$e;->n()V

    .line 29
    iget-object v1, p0, Landroidx/mediarouter/media/g$f;->f:Ljava/util/List;

    if-eqz v1, :cond_9

    .line 30
    iget-object v0, v0, Landroidx/mediarouter/media/g$e;->p:Landroidx/mediarouter/media/g$h;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/g$h;->o(Ljava/util/Collection;)V

    :cond_9
    :goto_3
    return-void

    .line 31
    :cond_a
    :goto_4
    invoke-virtual {p0}, Landroidx/mediarouter/media/g$f;->a()V

    :cond_b
    :goto_5
    return-void
.end method
