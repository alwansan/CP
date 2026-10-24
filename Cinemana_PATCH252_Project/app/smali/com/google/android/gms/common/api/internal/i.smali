.class public final Lcom/google/android/gms/common/api/internal/i;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"

# interfaces
.implements Lcom/shabakaty/downloader/na5;


# instance fields
.field public final a:Lcom/google/android/gms/common/api/internal/j;
    .annotation runtime Lorg/checkerframework/checker/initialization/qual/NotOnlyInitialized;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/i;->a:Lcom/google/android/gms/common/api/internal/j;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/i;->a:Lcom/google/android/gms/common/api/internal/j;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/j;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/a$f;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$f;->p()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/i;->a:Lcom/google/android/gms/common/api/internal/j;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/j;->m:Lcom/shabakaty/downloader/ka5;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/shabakaty/downloader/ka5;->p:Ljava/util/Set;

    return-void
.end method

.method public final r(Lcom/shabakaty/downloader/gb0;Lcom/google/android/gms/common/api/a;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/shabakaty/downloader/gb0;",
            "Lcom/google/android/gms/common/api/a<",
            "*>;Z)V"
        }
    .end annotation

    return-void
.end method

.method public final s()V
    .locals 10

    .line 1
    iget-object v8, p0, Lcom/google/android/gms/common/api/internal/i;->a:Lcom/google/android/gms/common/api/internal/j;

    .line 2
    iget-object v0, v8, Lcom/google/android/gms/common/api/internal/j;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 3
    :try_start_0
    new-instance v9, Lcom/shabakaty/downloader/ba5;

    iget-object v2, v8, Lcom/google/android/gms/common/api/internal/j;->h:Lcom/shabakaty/downloader/t30;

    iget-object v3, v8, Lcom/google/android/gms/common/api/internal/j;->i:Ljava/util/Map;

    iget-object v4, v8, Lcom/google/android/gms/common/api/internal/j;->d:Lcom/shabakaty/downloader/qq1;

    iget-object v5, v8, Lcom/google/android/gms/common/api/internal/j;->j:Lcom/google/android/gms/common/api/a$a;

    iget-object v6, v8, Lcom/google/android/gms/common/api/internal/j;->a:Ljava/util/concurrent/locks/Lock;

    iget-object v7, v8, Lcom/google/android/gms/common/api/internal/j;->c:Landroid/content/Context;

    move-object v0, v9

    move-object v1, v8

    invoke-direct/range {v0 .. v7}, Lcom/shabakaty/downloader/ba5;-><init>(Lcom/google/android/gms/common/api/internal/j;Lcom/shabakaty/downloader/t30;Ljava/util/Map;Lcom/shabakaty/downloader/qq1;Lcom/google/android/gms/common/api/a$a;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V

    iput-object v9, v8, Lcom/google/android/gms/common/api/internal/j;->k:Lcom/shabakaty/downloader/na5;

    .line 4
    iget-object v0, v8, Lcom/google/android/gms/common/api/internal/j;->k:Lcom/shabakaty/downloader/na5;

    invoke-interface {v0}, Lcom/shabakaty/downloader/na5;->a()V

    .line 5
    iget-object v0, v8, Lcom/google/android/gms/common/api/internal/j;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, v8, Lcom/google/android/gms/common/api/internal/j;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    .line 7
    iget-object v1, v8, Lcom/google/android/gms/common/api/internal/j;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 8
    throw v0
.end method

.method public final t(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final u(I)V
    .locals 0

    return-void
.end method

.method public final v()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final w(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$b;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/b<",
            "+",
            "Lcom/shabakaty/downloader/ft3;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "GoogleApiClient is not connected yet."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
