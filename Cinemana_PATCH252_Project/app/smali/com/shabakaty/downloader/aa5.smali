.class public final Lcom/shabakaty/downloader/aa5;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.4.0"

# interfaces
.implements Lcom/shabakaty/downloader/na5;


# instance fields
.field public final a:Lcom/google/android/gms/common/api/internal/j;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/shabakaty/downloader/aa5;->a:Lcom/google/android/gms/common/api/internal/j;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

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
    .locals 0

    return-void
.end method

.method public final t(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final u(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/aa5;->a:Lcom/google/android/gms/common/api/internal/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/j;->g(Lcom/shabakaty/downloader/gb0;)V

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/aa5;->a:Lcom/google/android/gms/common/api/internal/j;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/j;->n:Lcom/shabakaty/downloader/ua5;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/shabakaty/downloader/ua5;->a(IZ)V

    return-void
.end method

.method public final v()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shabakaty/downloader/aa5;->a:Lcom/google/android/gms/common/api/internal/j;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/j;->m:Lcom/shabakaty/downloader/ka5;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/shabakaty/downloader/aa5;->a:Lcom/google/android/gms/common/api/internal/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/j;->g(Lcom/shabakaty/downloader/gb0;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final w(Lcom/google/android/gms/common/api/internal/b;)Lcom/google/android/gms/common/api/internal/b;
    .locals 4
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
    :try_start_0
    iget-object v0, p0, Lcom/shabakaty/downloader/aa5;->a:Lcom/google/android/gms/common/api/internal/j;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/j;->m:Lcom/shabakaty/downloader/ka5;

    iget-object v0, v0, Lcom/shabakaty/downloader/ka5;->w:Lcom/shabakaty/downloader/ib5;

    .line 2
    iget-object v1, v0, Lcom/shabakaty/downloader/ib5;->a:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, v0, Lcom/shabakaty/downloader/ib5;->b:Lcom/shabakaty/downloader/jb5;

    .line 4
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/shabakaty/downloader/aa5;->a:Lcom/google/android/gms/common/api/internal/j;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/j;->m:Lcom/shabakaty/downloader/ka5;

    .line 6
    iget-object v1, p1, Lcom/google/android/gms/common/api/internal/b;->o:Lcom/google/android/gms/common/api/a$c;

    .line 7
    iget-object v0, v0, Lcom/shabakaty/downloader/ka5;->o:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$f;

    const-string v1, "Appropriate Api was not requested."

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/a;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/shabakaty/downloader/aa5;->a:Lcom/google/android/gms/common/api/internal/j;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/j;->g:Ljava/util/Map;

    .line 10
    iget-object v2, p1, Lcom/google/android/gms/common/api/internal/b;->o:Lcom/google/android/gms/common/api/a$c;

    .line 11
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    const/4 v2, 0x0

    .line 13
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 14
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/b;->o(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/b;->n(Lcom/google/android/gms/common/api/a$b;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 16
    :catch_0
    iget-object v0, p0, Lcom/shabakaty/downloader/aa5;->a:Lcom/google/android/gms/common/api/internal/j;

    new-instance v1, Lcom/shabakaty/downloader/z95;

    invoke-direct {v1, p0, p0}, Lcom/shabakaty/downloader/z95;-><init>(Lcom/shabakaty/downloader/aa5;Lcom/shabakaty/downloader/na5;)V

    .line 17
    iget-object v2, v0, Lcom/google/android/gms/common/api/internal/j;->e:Lcom/shabakaty/downloader/ma5;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 18
    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/j;->e:Lcom/shabakaty/downloader/ma5;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-object p1
.end method
