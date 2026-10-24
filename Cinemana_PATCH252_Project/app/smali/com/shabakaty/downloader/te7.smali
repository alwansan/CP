.class public final Lcom/shabakaty/downloader/te7;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@19.0.0"

# interfaces
.implements Lcom/shabakaty/downloader/ei5;


# instance fields
.field public final synthetic r:Lcom/shabakaty/downloader/br3;


# direct methods
.method public constructor <init>(Lcom/shabakaty/downloader/br3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shabakaty/downloader/te7;->r:Lcom/shabakaty/downloader/br3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final B([I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/te7;->r:Lcom/shabakaty/downloader/br3;

    iget-object v0, v0, Lcom/shabakaty/downloader/br3;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/br3$a;

    .line 2
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/br3$a;->k([I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/te7;->r:Lcom/shabakaty/downloader/br3;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/br3;->g:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/br3$b;

    .line 4
    invoke-interface {v1}, Lcom/shabakaty/downloader/br3$b;->b()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/te7;->r:Lcom/shabakaty/downloader/br3;

    iget-object v0, v0, Lcom/shabakaty/downloader/br3;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/br3$a;

    .line 6
    invoke-virtual {v1}, Lcom/shabakaty/downloader/br3$a;->d()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final c0([I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/te7;->r:Lcom/shabakaty/downloader/br3;

    iget-object v0, v0, Lcom/shabakaty/downloader/br3;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/br3$a;

    .line 2
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/br3$a;->g([I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/te7;->r:Lcom/shabakaty/downloader/br3;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/br3;->g:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/br3$b;

    .line 4
    invoke-interface {v1}, Lcom/shabakaty/downloader/br3$b;->f()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/te7;->r:Lcom/shabakaty/downloader/br3;

    iget-object v0, v0, Lcom/shabakaty/downloader/br3;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/br3$a;

    .line 6
    invoke-virtual {v1}, Lcom/shabakaty/downloader/br3$a;->c()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final l0([Lcom/shabakaty/downloader/sp2;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/te7;->r:Lcom/shabakaty/downloader/br3;

    iget-object v0, v0, Lcom/shabakaty/downloader/br3;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/br3$a;

    .line 2
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/br3$a;->i([Lcom/shabakaty/downloader/sp2;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onMetadataUpdated()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/te7;->r:Lcom/shabakaty/downloader/br3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/te7;->r:Lcom/shabakaty/downloader/br3;

    .line 4
    iget-object v0, v0, Lcom/shabakaty/downloader/br3;->g:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/br3$b;

    .line 6
    invoke-interface {v1}, Lcom/shabakaty/downloader/br3$b;->onMetadataUpdated()V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/te7;->r:Lcom/shabakaty/downloader/br3;

    iget-object v0, v0, Lcom/shabakaty/downloader/br3;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/br3$a;

    .line 8
    invoke-virtual {v1}, Lcom/shabakaty/downloader/br3$a;->b()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final onStatusUpdated()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/te7;->r:Lcom/shabakaty/downloader/br3;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, p0, Lcom/shabakaty/downloader/te7;->r:Lcom/shabakaty/downloader/br3;

    .line 4
    iget-object v1, v0, Lcom/shabakaty/downloader/br3;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/shabakaty/downloader/br3$i;

    .line 5
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    iget-boolean v3, v2, Lcom/shabakaty/downloader/br3$i;->d:Z

    if-nez v3, :cond_1

    .line 7
    invoke-virtual {v2}, Lcom/shabakaty/downloader/br3$i;->a()V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->h()Z

    move-result v3

    if-nez v3, :cond_2

    .line 9
    iget-boolean v3, v2, Lcom/shabakaty/downloader/br3$i;->d:Z

    if-eqz v3, :cond_2

    .line 10
    iget-object v3, v2, Lcom/shabakaty/downloader/br3$i;->e:Lcom/shabakaty/downloader/br3;

    .line 11
    iget-object v3, v3, Lcom/shabakaty/downloader/br3;->b:Landroid/os/Handler;

    .line 12
    iget-object v4, v2, Lcom/shabakaty/downloader/br3$i;->c:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v3, 0x0

    .line 13
    iput-boolean v3, v2, Lcom/shabakaty/downloader/br3$i;->d:Z

    .line 14
    :cond_2
    :goto_1
    iget-boolean v3, v2, Lcom/shabakaty/downloader/br3$i;->d:Z

    if-eqz v3, :cond_0

    .line 15
    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->i()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->B()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->l()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/shabakaty/downloader/br3;->k()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16
    :cond_3
    iget-object v2, v2, Lcom/shabakaty/downloader/br3$i;->a:Ljava/util/Set;

    .line 17
    invoke-virtual {v0, v2}, Lcom/shabakaty/downloader/br3;->z(Ljava/util/Set;)V

    goto :goto_0

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/shabakaty/downloader/te7;->r:Lcom/shabakaty/downloader/br3;

    .line 19
    iget-object v0, v0, Lcom/shabakaty/downloader/br3;->g:Ljava/util/List;

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/br3$b;

    .line 21
    invoke-interface {v1}, Lcom/shabakaty/downloader/br3$b;->onStatusUpdated()V

    goto :goto_2

    .line 22
    :cond_5
    iget-object v0, p0, Lcom/shabakaty/downloader/te7;->r:Lcom/shabakaty/downloader/br3;

    iget-object v0, v0, Lcom/shabakaty/downloader/br3;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/br3$a;

    .line 23
    invoke-virtual {v1}, Lcom/shabakaty/downloader/br3$a;->f()V

    goto :goto_3

    :cond_6
    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/te7;->r:Lcom/shabakaty/downloader/br3;

    .line 2
    iget-object v0, v0, Lcom/shabakaty/downloader/br3;->g:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/br3$b;

    .line 4
    invoke-interface {v1}, Lcom/shabakaty/downloader/br3$b;->p()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shabakaty/downloader/te7;->r:Lcom/shabakaty/downloader/br3;

    iget-object v0, v0, Lcom/shabakaty/downloader/br3;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/br3$a;

    .line 6
    invoke-virtual {v1}, Lcom/shabakaty/downloader/br3$a;->a()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final q0([I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/te7;->r:Lcom/shabakaty/downloader/br3;

    iget-object v0, v0, Lcom/shabakaty/downloader/br3;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/br3$a;

    .line 2
    invoke-virtual {v1, p1}, Lcom/shabakaty/downloader/br3$a;->j([I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final v0(Lcom/google/android/gms/cast/MediaError;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/shabakaty/downloader/te7;->r:Lcom/shabakaty/downloader/br3;

    iget-object p1, p1, Lcom/shabakaty/downloader/br3;->h:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/shabakaty/downloader/br3$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final w([II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/te7;->r:Lcom/shabakaty/downloader/br3;

    iget-object v0, v0, Lcom/shabakaty/downloader/br3;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shabakaty/downloader/br3$a;

    .line 2
    invoke-virtual {v1, p1, p2}, Lcom/shabakaty/downloader/br3$a;->h([II)V

    goto :goto_0

    :cond_0
    return-void
.end method
