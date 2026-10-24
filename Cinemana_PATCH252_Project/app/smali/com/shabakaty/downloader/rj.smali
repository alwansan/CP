.class public abstract Lcom/shabakaty/downloader/rj;
.super Ljava/lang/Object;
.source "BaseMediaSource.java"

# interfaces
.implements Lcom/shabakaty/downloader/uq2;


# instance fields
.field public final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/shabakaty/downloader/uq2$b;",
            ">;"
        }
    .end annotation
.end field

.field public final s:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/shabakaty/downloader/uq2$b;",
            ">;"
        }
    .end annotation
.end field

.field public final t:Lcom/shabakaty/downloader/yq2$a;

.field public final u:Lcom/shabakaty/downloader/s01$a;

.field public v:Landroid/os/Looper;

.field public w:Lcom/shabakaty/downloader/nn4;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/rj;->r:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/shabakaty/downloader/rj;->s:Ljava/util/HashSet;

    .line 4
    new-instance v0, Lcom/shabakaty/downloader/yq2$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/yq2$a;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/rj;->t:Lcom/shabakaty/downloader/yq2$a;

    .line 5
    new-instance v0, Lcom/shabakaty/downloader/s01$a;

    invoke-direct {v0}, Lcom/shabakaty/downloader/s01$a;-><init>()V

    iput-object v0, p0, Lcom/shabakaty/downloader/rj;->u:Lcom/shabakaty/downloader/s01$a;

    return-void
.end method


# virtual methods
.method public final a(Lcom/shabakaty/downloader/s01;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rj;->u:Lcom/shabakaty/downloader/s01$a;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/s01$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/s01$a$a;

    .line 3
    iget-object v3, v2, Lcom/shabakaty/downloader/s01$a$a;->b:Lcom/shabakaty/downloader/s01;

    if-ne v3, p1, :cond_0

    .line 4
    iget-object v3, v0, Lcom/shabakaty/downloader/s01$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final b(Landroid/os/Handler;Lcom/shabakaty/downloader/s01;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rj;->u:Lcom/shabakaty/downloader/s01$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/s01$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/shabakaty/downloader/s01$a$a;

    invoke-direct {v1, p1, p2}, Lcom/shabakaty/downloader/s01$a$a;-><init>(Landroid/os/Handler;Lcom/shabakaty/downloader/s01;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Lcom/shabakaty/downloader/yq2;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rj;->t:Lcom/shabakaty/downloader/yq2$a;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/yq2$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/yq2$a$a;

    .line 3
    iget-object v3, v2, Lcom/shabakaty/downloader/yq2$a$a;->b:Lcom/shabakaty/downloader/yq2;

    if-ne v3, p1, :cond_0

    .line 4
    iget-object v3, v0, Lcom/shabakaty/downloader/yq2$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e(Landroid/os/Handler;Lcom/shabakaty/downloader/yq2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rj;->t:Lcom/shabakaty/downloader/yq2$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/yq2$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/shabakaty/downloader/yq2$a$a;

    invoke-direct {v1, p1, p2}, Lcom/shabakaty/downloader/yq2$a$a;-><init>(Landroid/os/Handler;Lcom/shabakaty/downloader/yq2;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final i(Lcom/shabakaty/downloader/uq2$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rj;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/rj;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/shabakaty/downloader/rj;->v:Landroid/os/Looper;

    .line 4
    iput-object p1, p0, Lcom/shabakaty/downloader/rj;->w:Lcom/shabakaty/downloader/nn4;

    .line 5
    iget-object p1, p0, Lcom/shabakaty/downloader/rj;->s:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 6
    invoke-virtual {p0}, Lcom/shabakaty/downloader/rj;->x()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/rj;->p(Lcom/shabakaty/downloader/uq2$b;)V

    :goto_0
    return-void
.end method

.method public final j(Lcom/shabakaty/downloader/uq2$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rj;->v:Landroid/os/Looper;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/rj;->s:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/shabakaty/downloader/rj;->s:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/shabakaty/downloader/rj;->u()V

    :cond_0
    return-void
.end method

.method public synthetic n()Z
    .locals 1

    invoke-static {p0}, Lcom/shabakaty/downloader/tq2;->b(Lcom/shabakaty/downloader/uq2;)Z

    move-result v0

    return v0
.end method

.method public synthetic o()Lcom/shabakaty/downloader/nn4;
    .locals 1

    invoke-static {p0}, Lcom/shabakaty/downloader/tq2;->a(Lcom/shabakaty/downloader/uq2;)Lcom/shabakaty/downloader/nn4;

    move-result-object v0

    return-object v0
.end method

.method public final p(Lcom/shabakaty/downloader/uq2$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/rj;->s:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/rj;->s:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shabakaty/downloader/rj;->s:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/shabakaty/downloader/rj;->t()V

    :cond_0
    return-void
.end method

.method public final q(Lcom/shabakaty/downloader/uq2$b;Lcom/shabakaty/downloader/sp4;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/shabakaty/downloader/rj;->v:Landroid/os/Looper;

    if-eqz v1, :cond_1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/shabakaty/downloader/md;->b(Z)V

    .line 3
    iget-object v1, p0, Lcom/shabakaty/downloader/rj;->w:Lcom/shabakaty/downloader/nn4;

    .line 4
    iget-object v2, p0, Lcom/shabakaty/downloader/rj;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v2, p0, Lcom/shabakaty/downloader/rj;->v:Landroid/os/Looper;

    if-nez v2, :cond_2

    .line 6
    iput-object v0, p0, Lcom/shabakaty/downloader/rj;->v:Landroid/os/Looper;

    .line 7
    iget-object v0, p0, Lcom/shabakaty/downloader/rj;->s:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p0, p2}, Lcom/shabakaty/downloader/rj;->v(Lcom/shabakaty/downloader/sp4;)V

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {p0, p1}, Lcom/shabakaty/downloader/rj;->j(Lcom/shabakaty/downloader/uq2$b;)V

    .line 10
    invoke-interface {p1, p0, v1}, Lcom/shabakaty/downloader/uq2$b;->a(Lcom/shabakaty/downloader/uq2;Lcom/shabakaty/downloader/nn4;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final r(Lcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/s01$a;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/rj;->u:Lcom/shabakaty/downloader/s01$a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/shabakaty/downloader/s01$a;->g(ILcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/s01$a;

    move-result-object p1

    return-object p1
.end method

.method public final s(Lcom/shabakaty/downloader/uq2$a;)Lcom/shabakaty/downloader/yq2$a;
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/rj;->t:Lcom/shabakaty/downloader/yq2$a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/shabakaty/downloader/yq2$a;->r(ILcom/shabakaty/downloader/uq2$a;J)Lcom/shabakaty/downloader/yq2$a;

    move-result-object p1

    return-object p1
.end method

.method public t()V
    .locals 0

    return-void
.end method

.method public u()V
    .locals 0

    return-void
.end method

.method public abstract v(Lcom/shabakaty/downloader/sp4;)V
.end method

.method public final w(Lcom/shabakaty/downloader/nn4;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/rj;->w:Lcom/shabakaty/downloader/nn4;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/rj;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/uq2$b;

    .line 3
    invoke-interface {v1, p0, p1}, Lcom/shabakaty/downloader/uq2$b;->a(Lcom/shabakaty/downloader/uq2;Lcom/shabakaty/downloader/nn4;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract x()V
.end method
